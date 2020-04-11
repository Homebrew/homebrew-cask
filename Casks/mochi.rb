cask 'mochi' do
  version '1.4.11'
  sha256 'afcd021a5e212b65d9aa693f0e738187024ac206a59f00eef426949675d0713d'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
