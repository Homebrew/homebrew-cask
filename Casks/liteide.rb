cask 'liteide' do
  version '33'
  sha256 '76f87d67599a787676c8cf65284009b20f957d39a13f203a486bba0f6a079b1a'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macosx-qt5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom',
          checkpoint: '2c2bd7e5a2f71c56b29c086189461ffb4bab0be82f22b42d84bfc8a1ea879561'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
