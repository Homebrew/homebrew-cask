cask 'qutebrowser' do
  version '1.8.3'
  sha256 '547fe56e784771033c7d16b19327d49cb79509309de78c3ee5bf54fb976abcd6'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
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
