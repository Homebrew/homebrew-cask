cask 'houdahspot' do
  version '4.3.4'
  sha256 '82af7d666e902cf204fdddaed5f0de24c0f8a09e0adc92fce98f345c34f46aa0'

  url "https://www.houdah.com/houdahSpot/updates/cast#{version.major}_assets/HoudahSpot#{version}.zip"
  appcast "https://www.houdah.com/houdahSpot/updates/cast#{version.major}.xml",
          checkpoint: '67d55dc37d56ffa279ba69e89ae007c3e1548080d065c3266f5e249d4832fb3e'
  name 'HoudahSpot'
  homepage 'https://www.houdah.com/houdahSpot/'

  app 'HoudahSpot.app'
end
