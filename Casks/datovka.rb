cask 'datovka' do
  version '4.13.1'
  sha256 '987b6be02b0565be2bc7b133be1cc96af33fec6a6e7a082a3688d2272f9fab95'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
