cask 'jgrasp' do
  version '2.0.6_01'
  sha256 'dc1cf1036ae93bcfae2e713d474c01b3c9d83347a0c88e5e4372b29a1a698675'

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
