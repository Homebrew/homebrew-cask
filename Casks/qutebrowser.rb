cask 'qutebrowser' do
  version '1.13.0'
  sha256 '87260217318ad6836ee18f0550c3db547c33346eed10760e2fcafc1f0449a82d'

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
