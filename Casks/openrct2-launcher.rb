cask 'openrct2-launcher' do
  version 'v0.0.7'
  sha256 'e99bbb2c02b501ec0f322947b35e025897bb54d380f855dacdc6bb472f1e4520'

  url 'https://github.com/LRFLEW/OpenRCT2Launcher/releases/download/v0.0.7/OpenRCT2Launcher-macos.zip'
  appcast 'https://github.com/LRFLEW/OpenRCT2Launcher/releases.atom'
  name 'OpenRCT2Launcher'
  homepage 'https://github.com/LRFLEW/OpenRCT2Launcher'

  app 'OpenRCT2.app'
end
