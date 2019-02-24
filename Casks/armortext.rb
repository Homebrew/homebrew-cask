cask 'armortext' do
  version '0.20.84'
  sha256 'b878f9bc0557b7be753f3975d90e6d3ddb63674ee2cec411a4f4f6ff8298e43b'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
