cask 'jgrasp' do
  version '2.0.6'
  sha256 'ce6bbeff0c9f9062db99beeae6faa814b7a3d5e1f85182695c764fb935d7c80c'

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
