cask 'plant' do
  version '1.4.2.3'
  sha256 'f759fd217bc735ddc64bd13edd3bd5da3edd3bbd4226f6a015fe9e16bdbdb676'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true

  app 'Plant.app'
end
