cask :v1 => 'smaller' do
  version :latest
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml'
  homepage 'http://smallerapp.com/'
  license :unknown

  app 'Smaller.app'
end
