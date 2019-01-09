cask 'houdahspot' do
  version '4.3.9'
  sha256 '035c0f46910461368ed7f0520cbb61fc4068335740f2e89f2f5257d10459eaff'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml"
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
