cask 'munki' do
  version '2.8.2.2855'
  sha256 '1a2221a5032921f7380f4d3517889ab52cc3a9f47a7cdeac16fbdb4a0e2279dd'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: '7daa2ae50f039d7cd9bc3a7b5688124878b8f845b79405041466c8fe6bc5b839'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
