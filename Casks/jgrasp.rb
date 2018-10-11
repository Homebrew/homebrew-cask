cask 'jgrasp' do
  version '2.0.5_02'
  sha256 'e86d832c9efbe579af50de40660c149d187f3008c31366e166c00703a282321b'

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'https://jgrasp.org/'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
