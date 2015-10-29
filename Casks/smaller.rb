cask :v1 => 'smaller' do
  version :latest
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml'
  name 'Smaller'
  homepage 'http://smallerapp.com/'
  license :commercial

  app 'Smaller.app'
end
