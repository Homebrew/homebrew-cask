cask :v1 => 'liteide' do
  version '25.2'
  sha256 '92cb684a4832cf32d06ca0fa60f1155d64bd63fb9af708277bd57b70f5eb2cf8'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx.zip"
  homepage 'https://github.com/visualfc/liteide'
  license :oss

  app 'LiteIDE.app'
end
