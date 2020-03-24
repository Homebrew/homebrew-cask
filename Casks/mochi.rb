cask 'mochi' do
  version '1.4.9'
  sha256 '96305f21bc22793284fd3496fb7cbf0568b4f8fad8355dc1ef94d6ffea77382d'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
