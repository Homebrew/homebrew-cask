cask 'freecol' do
  version '0.11.3'
  sha256 'bf3dffc26689470f8a9c6fdccd079603ce86c4ed4360042db199b57e658e2de4'

  # sourceforge.net/freecol was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freecol/freecol-#{version}-mac.tar.bz2"
  appcast 'https://sourceforge.net/projects/freecol/rss',
          checkpoint: 'e03a560793701ff27f4229fca8348440c0a8c9d45caf6b8199f359edffb88f45'
  name 'FreeCol'
  homepage 'http://freecol.org'

  app 'FreeCol.app'
end
