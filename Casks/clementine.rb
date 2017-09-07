cask 'clementine' do
  version '1.3.1'
  sha256 '825aa66996237e1d3ea2723b24188ead203f298d0bec89f4c3bc6582d9e63e3a'

  # github.com/clementine-player/Clementine was verified as official when first introduced to the cask
  url "https://github.com/clementine-player/Clementine/releases/download/#{version}/clementine-#{version}.dmg"
  appcast 'https://github.com/clementine-player/Clementine/releases.atom',
          checkpoint: 'ced6f215c6a3dcad642b293d880a70dd17d9225f862e09b565ba542bfe8ee9cb'
  name 'Clementine'
  homepage 'https://www.clementine-player.org/'

  conflicts_with cask: 'caskroom/versions/clementine-rc'

  app 'clementine.app'

  zap delete: [
                '~/Library/Application Support/Clementine',
                '~/Library/Caches/org.clementine-player.Clementine',
                '~/Library/Preferences/org.clementine-player.Clementine.plist',
                '~/Library/Saved Application State/org.clementine-player.Clementine.savedState',
              ]
end
