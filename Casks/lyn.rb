cask 'lyn' do
  version '1.8.5'
  sha256 'a96766bee6e4350b096a5517c2bbb1170d018fc4016a0d67c67f71c4813a6f95'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '62aa93b5a77671a6028ec991884c80c8a4638e8674c853aabc679f6c0cda3a89'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'

  app 'Lyn.app'
end
