cask 'mimiq' do
  version '0.0.2'
  sha256 'bca6f31d4e0150c897e3c3c5d8135ad1af27526a4327d40ce3f36a8c203fc7bd'

  url 'https://github.com/wendyliga/mimiq-gui/releases/download/0.0.2/mimiq.zip'
  appcast 'http://mimiq.wendyliga.com/appcast.xml'
  name 'mimiq'
  homepage 'https://github.com/wendyliga/mimiq-gui'

  app 'mimiq.app'
end
