cask 'domoticz' do
  version :latest
  sha256 :no_check

  url 'https://releases.domoticz.com/releases/release/domoticz_osx_x86_64.tgz'
  name 'Domoticz'
  homepage 'https://www.domoticz.com/'

  depends_on formula: 'libusb-compat'
  depends_on formula: 'openssl'

  binary 'domoticz'
end
