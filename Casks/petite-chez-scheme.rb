class PetiteChezScheme < Cask
  version '8.4'
  sha256 '3ed7200c3e265d36d03129569a78bfde8aedaea1ec7565d3c7a4daca26389701'

  url 'http://www.scheme.com/download/pcsv8.4-ta6osx-1.pkg.tar.gz'
  homepage 'http://www.scheme.com/petitechezscheme.html'

  install 'pcsv8.4-ta6osx-1.pkg'
  uninstall :pkgutil => 'com.scheme.chezscheme'
end
