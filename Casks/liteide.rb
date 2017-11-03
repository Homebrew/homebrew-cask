cask 'liteide' do
  version '33'
  sha256 '76f87d67599a787676c8cf65284009b20f957d39a13f203a486bba0f6a079b1a'

  # downloads.sourceforge.net/liteide/liteidex was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: '9cfb38e688538cc323b96ba3dc99569f7a32b30f0759f532e64f02fecccc3245'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  app 'liteide/LiteIDE.app'
end
