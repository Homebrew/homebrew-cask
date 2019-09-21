cask 'plant' do
  version '1.4.7.5'
  sha256 '36860c3fd6d1b0ce746185fa030440ff3669c40bad664f2e7865f797c3136ea9'

  url "https://projects.plantapp.io/app/plant_v#{version}.dmg"
  appcast 'https://projects.plantapp.io/app/changelog.xml'
  name 'Plant'
  homepage 'https://plantapp.io/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Plant.app'
end
