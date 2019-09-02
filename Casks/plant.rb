cask 'plant' do
  version '1.4.7.3'
  sha256 '2d3f0a67e0b3cf2286e37473cb4e8a9efa528367eebb585769a86cddccb72223'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
