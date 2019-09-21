cask 'http-toolkit' do
  version '0.1.11'
  sha256 '49db8df9f0c3f20504fe56fdc1fdc0518e7b9b08406365477cf4d158a9411e2e'

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
