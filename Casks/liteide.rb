cask 'liteide' do
  version '30.2'
  sha256 'f4269b59169a342de125d566db39c6c96ba75366865b670f16ab2d910bd0bc1a'

  # sourceforge.net/project/liteide was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx-qt4.zip"
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
