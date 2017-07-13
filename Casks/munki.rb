cask 'munki' do
  version '3.0.2.3348'
  sha256 'ded633688981b600aacfc07db99c29b888cb4c33f64fdc830eb85847831221c1'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: 'c8d4df84e5acb4f360c15331045752bad77c9ae71a2a5e5ae71fa7a8eb8e28f3'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
