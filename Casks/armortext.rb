cask 'armortext' do
  version '0.19.32'
  sha256 'c7211c0ce0b999f35e2a8f6b0e4a7b87dfec08b44a6e58cc6f6fd2e5fc7c291a'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
