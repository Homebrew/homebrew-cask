cask 'mimiq' do
  version '0.0.2'
  sha256 'e53b51bf701a33ef4461d89238cdc0bca70ede27086bc57ba57ac41c8a3b05ff'

  url 'https://github.com/wendyliga/mimiq-gui/releases/download/0.0.2/mimiq.zip'
  appcast 'http://mimiq.wendyliga.com/appcast.xml'
  name 'mimiq'
  homepage 'https://github.com/wendyliga/mimiq-gui'

  app 'mimiq.app'
end
