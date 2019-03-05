cask 'fips' do
  version '3.3.1'
  sha256 '630ee2776117876d49d8073bb6715c9a7c7d927bc2745fca6ce5db2ab9c1456e'

  # github.com/matwey/fips3 was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom'
  name 'Fips'
  homepage 'https://fips.space/'

  app 'Fips.app'
end
