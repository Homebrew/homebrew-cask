cask 'http-toolkit' do
  version '0.1.17'
  sha256 'f347e594ed624401bd46a32f085ba8dd740fb26afa3f4097a69129c50243dea0'

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
