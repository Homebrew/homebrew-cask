cask 'liteide' do
  version '31.1'
  sha256 'fe06c00457b953716b688e1d20e9772cb494b0a915fab0857a12ce81a2656e29'

  url "https://github.com/visualfc/liteide/releases/download/x#{version.major}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'e5f80f49bf122f3deed5bc8b86b383cb1ec8b555123ba39a9993a5b2cd2e618b'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
