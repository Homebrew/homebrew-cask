cask :v1 => 'liteide' do
  version '24.2'
  sha256 '2178ec58f1aa3fe64be6d4f9c516fe6f712667bfe1abfa85aed6718cc7f3ef9a'

  url "https://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx.zip"
  homepage 'https://github.com/visualfc/liteide'
  license :oss

  app 'LiteIDE.app'
end
