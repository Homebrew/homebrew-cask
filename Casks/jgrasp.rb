cask 'jgrasp' do
  version '2.0.4_01'
  sha256 'f30ae9d0847f6f108300fe1f6d145d9f4f121f37fb155899bc9a938ead96b57d'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java('6+')
  end
end
