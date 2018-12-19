cask 'datovka' do
  version '4.11.1'
  sha256 '568337b3555a079b4cd62f19b48a771da42777789fcaada5ba0878f0a0cc69ba'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
