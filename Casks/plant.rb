cask 'plant' do
  version '1.4.7.4'
  sha256 'd26dcb7fdfadcbb23f52bbcde2b9031717073b230bad7602d77ee71c2f6266de'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
