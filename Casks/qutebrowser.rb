cask 'qutebrowser' do
  version '1.1.0'
  sha256 '35a60f169b2d9da7dd047a275d092ace143a5e9f6580ec84bbff7be8340deb7e'

  # github.com/qutebrowser/qutebrowser was verified as official when first introduced to the cask
  url "https://github.com/qutebrowser/qutebrowser/releases/download/v#{version}/qutebrowser-#{version}.dmg"
  appcast 'https://github.com/qutebrowser/qutebrowser/releases.atom',
          checkpoint: '7a527d1e8f8121d19243d14fe34b3fe444a2c9b31f30e74111b6b1ed9d79a092'
  name 'qutebrowser'
  homepage 'https://www.qutebrowser.org/'

  app 'qutebrowser.app'

  zap trash: [
               '~/Library/Application Support/qutebrowser',
               '~/Library/Caches/qutebrowser',
               '~/Library/Preferences/qutebrowser',
             ]
end
