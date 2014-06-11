class Pgloader < Cask
  url 'http://pgloader.io/files/pgloader-3.0.99.pkg'
  homepage 'http://pgloader.io'
  version '3.0.99'
  sha256 'df64c17a3b2aa62b9cdaab48c078e9a9ecb0580d660db036e11f1d63c4bee8ac'
  install 'pgloader-3.0.99.pkg'
  uninstall :pkgutil => 'org.tapoueh.pgloader'
end
