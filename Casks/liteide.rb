cask 'liteide' do
  version '36.2'
  sha256 '2457801b281062140273c681fd0ee1623a97cba47aa96cb519a0a1fddc793590'

  # github.com/visualfc/liteide was verified as official when first introduced to the cask
  url "https://github.com/visualfc/liteide/releases/download/x#{version}/liteidex#{version}.macos-qt5.12.5.zip"
  appcast 'https://github.com/visualfc/liteide/releases.atom'
  name 'LiteIDE'
  homepage 'http://liteide.org/'

  depends_on macos: '>= :sierra'

  app 'liteide/LiteIDE.app'
end
