cask 'plant' do
  version '1.4.5.2'
  sha256 '2c1c8b5b99ddc3f5bd16da7f89f8c5b362cc8e4c8494dd0f06798c44d37916ab'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
