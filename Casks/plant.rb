cask 'plant' do
  version '1.4.7.6'
  sha256 '203558859f039b15a9d77bf8663c5450b6a52a61576dd881fdae4b2eb76fcf7f'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
