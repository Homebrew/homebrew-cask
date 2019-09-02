cask 'plant' do
  version '1.4.6.5'
  sha256 'fbb05631610429880569ec120427db0030723ed48d607f9b0a508b06e107711d'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
