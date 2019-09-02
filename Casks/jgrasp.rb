cask 'jgrasp' do
  version '2.0.5_08'
  sha256 '3755d7c96464240d2dcfccfd9f92e6f444113040045979f1f75480ac52d10fd8'

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
