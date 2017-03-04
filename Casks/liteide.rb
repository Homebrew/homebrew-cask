cask 'liteide' do
  version '30.3'
  sha256 'f88dc0a924e3e9ce55c771da97c559f5ba3b61af35b8cbba7bed5bfdd30426c4'

  # sourceforge.net/liteide was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/X#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: '13e80964ddf7a8deb2c0a657cb0fe0efaa47cc53799fd3cce506015d66f0f667'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
