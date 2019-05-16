cask 'plant' do
  version '1.4.5.8'
  sha256 'e3e99360b0300a845e5b239ab4ec477fb0eddde0509beeac3d9eccca31e65aaa'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
