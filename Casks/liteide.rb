cask 'liteide' do
  version '28'
  sha256 '5e5f4eea936bb9b3e9fa4b21fdd55a0a7de6e9c2ca53af5ddaaf863efa06ffd2'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx-qt4.zip"
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
