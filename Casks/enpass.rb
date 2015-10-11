cask :v1 => 'enpass' do
  version '5.0.2'
  sha256 '62bfc6da69a43800d429013c6426181df085334e58d9142a7824cf917c0ab319'

  # sinew.in is the official download host per the vendor homepage
  url "http://dl.sinew.in/mac/package/Enpass-#{version}.zip"
  appcast 'http://dl.sinew.in/mac/package/appcast.xml',
          :format => :sparkle
  name 'Enpass'
  homepage 'http://www.enpass.io'
  license :freemium

  app 'Enpass.app'

  zap :delete => [
                  '~/Library/Preferences/in.sinew.Enpass-Desktop.plist',
                  '~/Library/Containers/in.sinew.Enpass-Desktop',
                  '~/Library/Caches/in.sinew.Enpass-Desktop',
                  '~/Library/Saved Application State/in.sinew.Enpass-Desktop.savedState'
                 ]

  depends_on :macos => '>= :mountain_lion'
end
