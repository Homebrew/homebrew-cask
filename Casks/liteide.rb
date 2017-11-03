cask 'liteide' do
  version '33'
  sha256 '76f87d67599a787676c8cf65284009b20f957d39a13f203a486bba0f6a079b1a'

  # downloads.sourceforge.net/liteide was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/liteide/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://sourceforge.net/projects/liteide/rss',
          checkpoint: '6b4b8a37bfb57c6b71abaa22af6c70baa1d0630132ea6e67046a360e1422c207'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
