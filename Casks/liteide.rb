cask 'liteide' do
  version '31.1'
  sha256 '910a6d5c6a57b5681a1737e5bbb870628fc3dfb204d723576bd6196e6e74fdcd'

  url "https://github.com/visualfc/liteide/releases/download/x#{version.major}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: '7c0cae7a9bf833cb7cdee027d93232d17637a85cd0c2ec4aeec3fa998c315caa'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
