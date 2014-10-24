class Controlplane < Cask
  version '1.5.4'
  sha256 'e2e151797eb356c43c9a07fa39df375c87fa8671541cad0895c696fd6026c5eb'

  url "http://www.controlplaneapp.com/download/#{version}"
  appcast 'http://www.controlplaneapp.com/appcast.xml',
          :sha256 => 'bc5bd3a27e1e12f09fc1d5089af79535992473d361030ae50993e7c0135ad287'
  homepage 'http://www.controlplaneapp.com/'
  license :unknown

  app 'ControlPlane.app'
  zap :delete => '~/Library/Preferences/com.dustinrue.ControlPlane.plist'
end
