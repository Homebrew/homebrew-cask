class Liteide < Cask
  version '23.2'
  sha256 '29cf71bfb324e5d648038fd3e5b4ddc9335b8ca6393281d14c40067e9cb01b8b'

  url "https://downloads.sourceforge.net/project/liteide/X#{version}/liteidex#{version}-1.macosx.zip"
  homepage 'https://github.com/visualfc/liteide'

  app 'LiteIDE.app'
end
