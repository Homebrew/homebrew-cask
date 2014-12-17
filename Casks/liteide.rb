cask :v1 => 'liteide' do
  version '25.1'
  sha256 '09de733b069a37bc3ff575e7218a0e547af9d2b5a68fef7bcb3a2d362820f101'

  url "http://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx.zip"
  homepage 'https://github.com/visualfc/liteide'
  license :oss

  app 'LiteIDE.app'
end
