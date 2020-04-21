cask 'mochi' do
  version '1.4.12'
  sha256 'd2c118e42a2aa11c197052c2fdcd62dc52ab22dae582f7567739ac8df701091a'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
