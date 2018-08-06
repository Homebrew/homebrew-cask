cask 'plant' do
  version '1.4.2.2'
  sha256 '68592ce1b709222ffac3b07734e642031b21e78866d7920b2022cf09fe659b45'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true

  app 'Plant.app'
end
