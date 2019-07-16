cask 'plant' do
  version '1.4.6.0'
  sha256 '128f2ad7fb191e4c05d6e2fa004c5def4fb512ebc3fd27c6d7e838b25295384b'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
