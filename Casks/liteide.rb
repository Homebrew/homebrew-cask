cask 'liteide' do
  version '35.4-1'
  sha256 '7f95ef6c2fcb924fd1d98d16c6223d46b979194b499061db1cf8c5dc0c5cff7c'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version.major_minor}/liteidex#{version}.macos-qt5.9.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
