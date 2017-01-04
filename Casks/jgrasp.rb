cask 'jgrasp' do
  version '2.0.3_04'
  sha256 '6b08856291649bf87f7742b99ce439bf9b96a73363f34bb34ef8ebcb37f11b99'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'org.jgrasp.jgrasp.jgrasp.pkg'

  caveats do
    depends_on_java('6+')
  end
end
