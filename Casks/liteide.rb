class Liteide < Cask
  version '23.1'
  sha256 '87445988ad3f8074b7c16ebf1a2eeab732621f32794fdb2d59bc40ffe2995820'

  url "https://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}.macosx.zip"
  homepage 'https://github.com/visualfc/liteide'

  link 'LiteIDE.app'
end
