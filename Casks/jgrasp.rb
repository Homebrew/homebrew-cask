cask 'jgrasp' do
  version '2.0.5_06'
  sha256 '4afbac7f5fac3851dcd7524ef242143f3b7301ff6bc08af5b86e388432020934'

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
