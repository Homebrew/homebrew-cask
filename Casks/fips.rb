cask 'fips' do
  version '3.3.0'
  sha256 '4bba26c41e48aef7d3cc760626b559c3a174672dd4e9231c41232012119827a8'

  # github.com/matwey/fips3 was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom'
  name 'Fips'
  homepage 'https://fips.space/'

  app 'Fips.app'
end
