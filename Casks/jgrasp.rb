cask 'jgrasp' do
  version '2.0.6_04'
  sha256 'a936349cdf45c2a3bfdbfaf700737872673b75cddcd038a5ddf65644ae6f09c8'

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
