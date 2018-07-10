cask 'plant' do
  version '1.4.1.3'
  sha256 '0f6d4d97878a83d151cf207e494c7f620051cc1de49b54f316ffb8992a29d301'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true

  app 'Plant.app'
end
