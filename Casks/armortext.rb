cask 'armortext' do
  version '0.22.24'
  sha256 '8ab6b973e66cc45f4e2f638285c24137c111a6fbcd40c472a13db0b86b2c33f8'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
