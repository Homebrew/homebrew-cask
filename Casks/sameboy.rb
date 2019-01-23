cask 'sameboy' do
  version '0.11.2'
  sha256 '70fa66740a3c04282fed32e54631252840d9023a0183e05f34c64fdfca91cd0a'

  # github.com/LIJI32/SameBoy was verified as official when first introduced to the cask
  url 'https://github.com/LIJI32/SameBoy/releases/download/v0.11.2/sameboy_cocoa_v0.11.2.zip'
  appcast 'https://github.com/LIJI32/SameBoy/releases.atom'
  name 'SameBoy'
  homepage 'https://sameboy.github.io/'

  app 'SameBoy.app'
end
