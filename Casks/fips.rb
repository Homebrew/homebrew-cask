cask 'fips' do
  version '3.2.0'
  sha256 '7cfdc22654208a5017dde4c181ca6ada2e67e682de8b903a3ed2d69ca650a055'

  # github.com/matwey/fips3/releases was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom',
          checkpoint: 'e4cd19f9d0d9da47637a9d0bac136a68190a6a17dac0f83aba535527c701c1e5'
  name 'Fips'
  homepage 'http://fips.space/'

  app 'Fips.app'
end
