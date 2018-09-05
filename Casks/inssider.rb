cask 'inssider' do
  version '4.2.3.4'
  sha256 'f499dce56c59a2a3091bcd994a85adc5a26c9e14917daa1f3bacabc0fc87a4b1'

  # metageek.net was verified as official when first introduced to the cask
  url "http://files.metageek.net/downloads/inSSIDer#{version.major}-installer.dmg"
  name 'inSSIDer'
  homepage 'https://www.metageek.com/products/inssider/'

  app 'inSSIDer.app'
end
