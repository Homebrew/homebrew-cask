cask 'http-toolkit' do
  version '0.1.16'
  sha256 'c4af0492da5a61cb8aee3c633fc7d2d104963745bc1395f559d219274bb22fac'

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
