cask 'mochi' do
  version '1.4.14'
  sha256 '86587287c76224291e7951452144ebde20a959b3782a8fcd893120aa88c9e41d'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
