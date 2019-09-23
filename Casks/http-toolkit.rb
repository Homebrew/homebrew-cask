cask 'http-toolkit' do
  version '0.1.12'
  sha256 'cf175d6cb8c683f3d8a4fa9252dcafeef4aeb3e6fb19568cb16f8b7e4e8a7c50'

  # github.com/httptoolkit/httptoolkit-desktop was verified as official when first introduced to the cask
  url "https://github.com/httptoolkit/httptoolkit-desktop/releases/download/v#{version}/HTTP.Toolkit.dmg"
  appcast 'https://github.com/httptoolkit/httptoolkit-desktop/releases.atom'
  name 'HTTP Toolkit'
  homepage 'https://httptoolkit.tech/'

  app 'HTTP Toolkit.app'

  zap trash: [
               '~/Library/Application Support/HTTP Toolkit',
               '~/Library/Caches/httptoolkit-server',
               '~/Library/Logs/HTTP Toolkit',
               '~/Library/Preferences/httptoolkit',
               '~/Library/Preferences/tech.httptoolkit.desktop.plist',
               '~/Library/Saved Application State/tech.httptoolkit.desktop.savedState',
             ]
end
