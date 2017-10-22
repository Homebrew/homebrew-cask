cask 'clementine' do
  version '1.3.1'
  sha256 '825aa66996237e1d3ea2723b24188ead203f298d0bec89f4c3bc6582d9e63e3a'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: '095c6ab8b2c10c84122bba3d39c13fee4124640913fed4a7f0480251b5b84bf4'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'

  conflicts_with cask: 'clementine-rc'

  app 'clementine.app'

  zap delete: [
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
              ]
end
