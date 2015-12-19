cask 'munki' do
  version '2.4.0.2561'
  sha256 '7fc73752855099185627374904388a61f4c18450e53ca674455b168719197bdf'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*},'\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
