cask 'mochi' do
  version '1.4.6'
  sha256 'b0c269f974398a6122cc3d1a295cc703bad9549d66f50df92ad53cdfb9a7b228'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
