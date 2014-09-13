class Controlplane < Cask
  version '1.5.3'
  sha256 '3a0b807da7fa6f45ab507e44ff01209e4beae633b6e7708d4c61907de8b78fbd'

  url 'http://www.controlplaneapp.com/download/1.5.3'
  appcast 'http://www.controlplaneapp.com/appcast.xml'
  homepage 'http://www.controlplaneapp.com/'

  app 'ControlPlane.app'
  zap :files => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
