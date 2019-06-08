cask 'armortext' do
  version '0.21.27'
  sha256 '303cd21df3841fca6ec0cd22d67713c78805e1d9104bb9e376f1ec332e72363c'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
