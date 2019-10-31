cask 'liteide' do
  version '36.2'
  sha256 '9c23c2a4f75f04689aa19189aced081e36148efb7ae3fb1ec9d863198528e012'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.12.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
