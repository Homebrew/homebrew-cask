cask 'mochi' do
  version '1.4.7'
  sha256 'b1a428f65a370c5491fe74b3439cc2aa4d729ad97177e205eed553af17a4092c'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
