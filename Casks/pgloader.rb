cask :v1 => 'pgloader' do
  version '3.0.99'
  sha256 'df64c17a3b2aa62b9cdaab48c078e9a9ecb0580d660db036e11f1d63c4bee8ac'

  url "http://pgloader.io/files/pgloader-#{version}.pkg"
  homepage 'http://pgloader.io'
  license :unknown

  pkg "pgloader-#{version}.pkg"

  uninstall :pkgutil => 'org.tapoueh.pgloader'
end
