cask 'freecol' do
  version '0.11.6'
  sha256 'f771f9e31876050281bddb3cc18cb3e5e7f10b32426730c59a9688e1f3496cb1'

  # sourceforge.net/freecol was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/freecol/freecol-#{version}-mac.tar.bz2"
  appcast 'https://sourceforge.net/projects/freecol/rss',
          checkpoint: '9e98b8be91794dc547ce105cd3c90b2f8b360aee414d84f1bf642b9624c925fe'
  name 'FreeCol'
  homepage 'http://www.freecol.org/'

  app 'FreeCol.app'
end
