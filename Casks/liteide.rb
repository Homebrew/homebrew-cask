cask 'liteide' do
  version '31.1'
  sha256 '910a6d5c6a57b5681a1737e5bbb870628fc3dfb204d723576bd6196e6e74fdcd'

  url "https://github.com/visualfc/liteide/releases/download/x#{version.major}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'e5f80f49bf122f3deed5bc8b86b383cb1ec8b555123ba39a9993a5b2cd2e618b'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
