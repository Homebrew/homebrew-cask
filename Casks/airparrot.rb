cask 'airparrot' do
  version '2.7.3'
  sha256 '5eea2a81ed32941ed8a169d53a3b3dcda26f5a3dcb30c4c0403f205f5de8577d'

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot#{version.major}.xml"
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'

  app "AirParrot #{version.major}.app"
end
