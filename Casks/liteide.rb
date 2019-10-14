cask 'liteide' do
  version '36.1'
  sha256 'f9094b6f0732cd2b99f3f3501555e46249b3420703ef82b02150a34f5df6d023'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.9.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'LiteIDE.app'
end
