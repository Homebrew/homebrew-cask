cask 'armortext' do
  version '0.22.10'
  sha256 '218175b138fec2b44b0721ad459fc18933863f6efabc1b297976b12c00a9e2e5'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
