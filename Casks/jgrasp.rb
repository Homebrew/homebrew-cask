cask 'jgrasp' do
  version '2.0.6_03'
  sha256 'ee81e974aa4d736861d588bb716b80db0a6c67c44a30865c9bf89e3f79ad821d'

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  appcast 'https://jgrasp.org/'
  name 'jgrasp'
  homepage 'https://jgrasp.org/'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
