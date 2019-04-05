cask 'datovka' do
  version '4.12.0'
  sha256 '9ed4473b4e7c0c999e537723bde27b8ae43fedd65b96f30d16e3b01bed82b6e4'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
