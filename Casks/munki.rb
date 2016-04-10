cask 'munki' do
  version '2.6.1.2684'
  sha256 'ad177547c2ebfb8332bfb929bb976b1a61d802d57a4a4d701a606506e48c2b21'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'c737daa2eb0ed7ac574771833788ee62a12869aa1f53c516bc07f1ecffb5391c'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'
  license :apache

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
