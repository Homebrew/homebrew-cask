cask :v1 => 'munki' do
  version '2.3.0.2519'
  sha256 'c994fef514948249043ba396de304ccb3e8afdc219ddc91987fc2da2288938de'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*},'\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
