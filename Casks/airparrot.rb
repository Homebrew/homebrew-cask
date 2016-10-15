cask 'airparrot' do
  version '2.6.2'
  sha256 'fdc491ab964ac19d4f2b62e9f1f5c827941ce1c207a9eec6003f8aeaf7dc81bd'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '92dc351a84122af35a424579d65fa9c842fb0a26d66625a729b21e243a49bffa'
  name 'AirParrot'
  homepage 'https://www.airsquirrels.com/airparrot/'

  app 'AirParrot 2.app'
end
