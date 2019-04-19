cask 'jgrasp' do
  version '2.0.5_05'
  sha256 '753bf46747d4182eb88339ec27c9f51a0379b8756ba80319b884032be8418a33'

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
