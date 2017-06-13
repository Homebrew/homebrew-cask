cask 'jgrasp' do
  version '2.0.3_06'
  sha256 'd34be521aabef29ec711f3f0f09a0aaf68500001481f421d6da83dcc10a13816'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java('6+')
  end
end
