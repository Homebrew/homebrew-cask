cask 'airparrot' do
  version '2.5.2'
  sha256 'bfe2ca192f1cf01a7bcd6970e318c194913c6f9b8b9d94681dbad9aa3a221376'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '1c7ec2cb78de96aa5932b4c11a785ba1c4bffd3c641ac76fb413cc43da75cd3d'
  name 'AirParrot'
  homepage 'https://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
