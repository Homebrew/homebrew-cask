cask 'petite-chez-scheme' do
  version '8.4'
  sha256 '3ed7200c3e265d36d03129569a78bfde8aedaea1ec7565d3c7a4daca26389701'

  url "https://www.scheme.com/download/pcsv#{version}-ta6osx-1.pkg.tar.gz"
  name 'Petite Chez Scheme'
  homepage 'https://www.scheme.com/petitechezscheme.html'

  pkg "pcsv#{version}-ta6osx-1.pkg"

  uninstall pkgutil: 'com.scheme.chezscheme'
end
