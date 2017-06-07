cask 'mnemosyne' do
  version '2.4.1'
  sha256 '8c641a1e7862e28db0469e031e6255ef6da6b5b8de0b6bb366b40500406e8baa'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: 'f85fdd39069b9dda98e8b13376e30a07672ca11424ca8c17d3da3132d03553a4'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
