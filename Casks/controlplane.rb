class Controlplane < Cask
  version '1.5.3'
  sha256 '3a0b807da7fa6f45ab507e44ff01209e4beae633b6e7708d4c61907de8b78fbd'

  url "http://www.controlplaneapp.com/download/#{version}"
  appcast 'http://www.controlplaneapp.com/appcast.xml',
          :sha256 => 'bc5bd3a27e1e12f09fc1d5089af79535992473d361030ae50993e7c0135ad287'
  homepage 'http://www.controlplaneapp.com/'
  license :unknown

  app 'ControlPlane.app'
  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
