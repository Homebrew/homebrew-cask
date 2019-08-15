cask 'armortext' do
  version '0.22.15'
  sha256 '7771e3ca991fddaab4d9e63cbc007acaf77229a019cce4999ee9c7ee19b8f3af'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
