cask 'liteide' do
  version '37'
  sha256 'f012e101e6746725ea564ef55eac1e5d124e2cbe26887e897f8a63e44f0cfb35'

  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.12.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'

  depends_on macos: '>= :sierra'

  app 'liteide/LiteIDE.app'
end
