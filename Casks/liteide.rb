cask 'liteide' do
  version '35.1'
  sha256 'bb6b9623cb57ef1d92572cbc2cac858e5d2ff5032777752a97f094e041cab2cc'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.9.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  app 'liteide/LiteIDE.app'
end
