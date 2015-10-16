cask :v1 => 'munki' do
  version '2.3.1.2535'
  sha256 '6362031c87685800e93f674e7e3750844d2a1413fe7bc6ebc689e84a259e2c18'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*},'\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
