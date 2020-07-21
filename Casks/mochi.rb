cask 'mochi' do
  version '1.5.10'
  sha256 'fb13066599ec1c3c4b832616c33af64e7aa2e627e509d1dfda0bb88dc4fa27a6'

  url "https://mochi.cards/releases/Mochi-#{version}.dmg"
  appcast 'https://mochi.cards/'
  name 'Mochi'
  homepage 'https://mochi.cards/'

  app 'Mochi.app'
end
