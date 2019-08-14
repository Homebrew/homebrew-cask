cask 'jgrasp' do
  version '2.0.5_07'
  sha256 '022d50615f406b6255e0d7a2cf9fb651fc128e599958a1815b0eab3c4dd5b485'

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
