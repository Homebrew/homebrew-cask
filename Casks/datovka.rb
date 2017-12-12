cask 'datovka' do
  version '4.10.0'
  sha256 '9f4015931df6969ffb30cd9817e2de18f17db7e9c665c065b01e1e13d0a34320'

  # secure.nic.cz/files/datove_schranky was verified as official when first introduced to the cask
  url "https://secure.nic.cz/files/datove_schranky/#{version}/datovka-#{version}-osx10.7.dmg"
  name 'Datovka'
  homepage 'https://www.datovka.cz/'

  app 'datovka.app'
end
