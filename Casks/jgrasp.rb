cask 'jgrasp' do
  version '2.0.4_03'
  sha256 '24c7b053e1a0072581e58934ba9232124db1827e86022c424100fbae179dd507'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java('6+')
  end
end
