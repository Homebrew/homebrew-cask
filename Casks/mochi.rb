cask 'mochi' do
  version '1.4.16'
  sha256 'dafc1340cca9300d6bd9edc138a5775407f163c60083aa5fdbd82eaff43e0957'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
