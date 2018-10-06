cask 'qutebrowser' do
  version '1.5.0'
  sha256 '8eba307812ac9c95e7cc1b211251a94fda8d07bfb20141a248e548af943411f2'

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
