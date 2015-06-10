cask :v1 => 'munki' do
  version '2.1.1.2352'
  sha256 'd2287454a1b3aa66ef49e41a34dfa55cfffd45d3e00de5d2288b3fd7ced2e42c'

  url "https://github.com/munki/munki/releases/download/v#{version}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
