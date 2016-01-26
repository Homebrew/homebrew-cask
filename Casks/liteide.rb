cask 'liteide' do
  version '27.2.1'
  sha256 '4f142d79cd7161ff7e51cb38a0c5e60242315456bebe23b3ecaaf54227cd01ff'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx-qt5.zip"
  name 'LiteIDE'
  homepage 'https://github.com/visualfc/liteide'
  license :gpl

  app 'LiteIDE.app'
end
