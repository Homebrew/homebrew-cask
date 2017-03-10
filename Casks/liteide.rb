cask 'liteide' do
  version '31'
  sha256 '910a6d5c6a57b5681a1737e5bbb870628fc3dfb204d723576bd6196e6e74fdcd'

  url 'https://github.com/visualfc/liteide/releases/download/'\
    "x#{version}/liteidex#{version}.macosx-qt5.zip"

  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: '13e80964ddf7a8deb2c0a657cb0fe0efaa47cc53799fd3cce506015d66f0f667'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
