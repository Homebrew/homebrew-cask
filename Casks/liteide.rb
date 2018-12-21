cask 'liteide' do
  version '35.2'
  sha256 'e563158c95aa2c316f00ecaf4a599313c27311b73230a8df9afbf11f1e37a4dd'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.9.5-1.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
