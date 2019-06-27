cask 'armortext' do
  version '0.21.30'
  sha256 '2a589d1ca54c434d75553f8594f1da9b773d65eca6006e5b3f7fe157b05675c8'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
