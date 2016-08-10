cask 'liteide' do
  version '30.2'
  sha256 'f4269b59169a342de125d566db39c6c96ba75366865b670f16ab2d910bd0bc1a'

  # sourceforge.net/liteide was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/X#{version}/liteidex#{version}.macosx-qt4.zip"
  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: 'c9055a3a1b71a9c59f74e33210a3674ba76282253f1989a1a46cdfa7ed5c5898'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
