cask 'munki' do
  version '3.0.0.3333'
  sha256 'ad18edc7014c6fe9070a0be278d9595d882406f85cb02789eb1d21fa3cf893fb'

  # github.com/munki/munki was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.sub(%r{^(\d+\.\d+.\d+).*}, '\1')}/munkitools-#{version}.pkg"
  appcast 'https://github.com/munki/munki/releases.atom',
          checkpoint: '1a0d98eb051e609fe94e8624b88d23bb3e79944c1810bc8316531c8736e20804'
  name 'Munki'
  homepage 'https://www.munki.org/munki/'

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil: 'com.googlecode.munki.*'
end
