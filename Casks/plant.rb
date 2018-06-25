cask 'plant' do
  version '1.4.0.6'
  sha256 '3bc0212f34cdaf6ff01a1452655bf940954a15c4827b80a69e6e8f4c8f177972'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true

  app 'Plant.app'
end
