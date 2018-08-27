cask 'jgrasp' do
  version '2.0.5_01'
  sha256 'c515b5c3b763799d5c7a9572ca5224595c8461fef561dece6eac08674964accf'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
