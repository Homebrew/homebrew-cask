cask 'datovka' do
  version '4.14.0'
  sha256 '73c925f5ba7026804045f04cc61514ae642f62f3a90f9303b0e89d1129f8cc40'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  appcast 'https://www.datovka.cz/cs/pages/instalace.html'
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
