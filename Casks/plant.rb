cask 'plant' do
  version '1.4.3.6'
  sha256 '383739b757e26101f8cd612bf7322b706589649a9e4f70a5288fd4db6c7fac21'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
