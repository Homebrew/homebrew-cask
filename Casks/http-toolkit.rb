cask 'http-toolkit' do
  version '0.1.9'
  sha256 '3630f3a703b87f27a8ca1f550101f9d3ed424f4a37d3d8d79c0e6fdeb08783ba'

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
