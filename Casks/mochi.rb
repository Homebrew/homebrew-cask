cask 'mochi' do
  version '1.4.13'
  sha256 '3c85c9bd670a59a306af06d71815e296ba079507770fe6ea309cf5217c01b9f6'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
