cask 'mochi' do
  version '1.5.2'
  sha256 '4b9d2d96610939e211c5c17b2e6880b31e35a7537e5da4cf255107185b78e138'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
