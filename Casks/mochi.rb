cask 'mochi' do
  version '1.4.17'
  sha256 '1ccbf347d17b63273e81227d87596482823c2e070afb19b74ac03656ca7800ae'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
