cask 'armortext' do
  version '0.21.24'
  sha256 '3fbe09896dfc57669c9199790f783001ea0ec80c69fd4113ee90e0ddecddda19'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
