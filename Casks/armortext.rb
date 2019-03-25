cask 'armortext' do
  version '0.21.4'
  sha256 'fe03ebc51b016ad14b3011546140251a8341a6d7700d9c359c6c6f5f0edaf0bf'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
