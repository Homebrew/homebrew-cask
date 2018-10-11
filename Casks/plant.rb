cask 'plant' do
  version '1.4.3.4'
  sha256 'a7093adbc901768ed725ca708a9afb48955b1fb6dd40966e7ec5a13ea0c8dcc3'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
