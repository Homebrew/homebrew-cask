cask 'datovka' do
  version '4.10.2'
  sha256 '7cc0750a53f9457346d56a00c24d53e8a7fdc4e4b35c094f5e129492da00ef8c'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-64bit-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
