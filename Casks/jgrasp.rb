cask 'jgrasp' do
  version '2.0.4_04'
  sha256 '5ece62ccdb6ee38b24e1727ea3674c059dbe512226eb60670773609536defa7b'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
