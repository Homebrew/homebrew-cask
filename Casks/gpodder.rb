cask 'gpodder' do
  version '3.9.3_1'
  sha256 'dc9f9464965715bc54699bf6fe1c1a67af3f009e55dd15ef82cf3920b6da27aa'

  # sourceforge.net/gpodder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/gpodder/gPodder-#{version}.zip"
  appcast 'https://sourceforge.net/projects/gpodder/rss?path=/macosx',
          checkpoint: 'd6eebd0c44c0ba73cda2175ec319524e3d6e63ce219f87985f26cb392094a11b'
  name 'gPodder'
  homepage 'https://gpodder.github.io/'

  app 'gPodder.app'
end
