cask 'airparrot' do
  version '2.7.2'
  sha256 '4fab55cc61ee24cfc04a91ccb7c4160b3ed1d79390f8dc5f118e52daa4f28e7f'

  url "https://download.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot-#{version}.dmg"
  appcast "https://updates.airsquirrels.com/AirParrot#{version.major}/Mac/AirParrot#{version.major}.xml",
          checkpoint: '9da80e53b07a19c8c80a3500d3baa0e8553a4839b2bdbaf489f06ec518df076a'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'

  app "AirParrot #{version.major}.app"
end
