cask 'armortext' do
  version '0.21.39'
  sha256 'fbe87b9e9d8e8acad6e79ee8af3779e259fe22f7112ce7c5a967848b51fa8191'

  # armortext.co was verified as official when first introduced to the cask
  url "https://downloads.armortext.co/desktop/release/#{version}/ArmorText-#{version}-mac64.dmg"
  appcast 'https://armortext.com/download/'
  name 'Armor Text'
  homepage 'https://armortext.com/'

  app 'ArmorText.app'
end
