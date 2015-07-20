cask :v1 => 'munki' do
  version '2.2.4.2431'
  sha256 'e99ff8a826c3e3281decb4b124d93588347e8fb577cbfe29fd1223f3ca6ff000'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*},'\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall :pkgutil => 'com.googlecode.munki.*'
end
