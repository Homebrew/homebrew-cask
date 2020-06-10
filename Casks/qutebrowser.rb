cask 'qutebrowser' do
  version '1.12.0'
  sha256 'ccac429ea7449049a5e7157053a7d35c99e8dc187ce27dfd3063d446e58e62fa'

  # github.com/qutebrowser/qutebrowser/ was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
