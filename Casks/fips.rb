cask 'fips' do
  version '3.4.0'
  sha256 '64e04004ae6712af065cb0fac860f5bb54ece1ec3ff08b88a0e1e23722fab8cf'

  # github.com/matwey/fips3 was verified as official when first introduced to the cask
  url "https://github.com/matwey/fips3/releases/download/#{version}/Fips-#{version}-Darwin.dmg"
  appcast 'https://github.com/matwey/fips3/releases.atom'
  name 'Fips'
  homepage 'https://fips.space/'

  depends_on macos: '>= :high_sierra'

  app 'Fips.app'
end
