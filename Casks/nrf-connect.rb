cask 'nrf-connect' do
  version '56320.10.55589982'
  sha256 '4b9cf9a4d52bd9365b8b14c5aa3eaaa3f02c07bebde001d8c60953059d66262b'

  url "https://www.nordicsemi.com/eng/nordic/download_resource/#{version.major}/#{version.minor}/#{version.patch}"
  name 'nRF Connect'
  homepage 'https://www.nordicsemi.com/eng/Products/Bluetooth-low-energy/nRF-Connect-for-desktop/'

  app 'nRF Connect.app'
end
