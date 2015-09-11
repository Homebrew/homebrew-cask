cask :v1 => 'gity' do
  version :latest
  sha256 :no_check

  url 'http://gityapp.com/Gity.zip'
  appcast 'http://gityapp.com/gity.xml'
  name 'Gity'
  homepage 'http://gityapp.com/'
  license :gpl

  app 'Gity.app'
end
