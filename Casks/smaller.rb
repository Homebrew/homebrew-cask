cask :v1 => 'smaller' do
  version :latest
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml'
  homepage 'http://smallerapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Smaller.app'
end
