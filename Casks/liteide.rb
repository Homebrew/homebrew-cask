cask 'liteide' do
  version '33'
  sha256 '76f87d67599a787676c8cf65284009b20f957d39a13f203a486bba0f6a079b1a'

  # downloads.sourceforge.net/liteide/liteidex was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: 'dc7b56da16d71a7fb457ce0d12a74da6c4f31a99df129167e88c4a554deeab4e'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
