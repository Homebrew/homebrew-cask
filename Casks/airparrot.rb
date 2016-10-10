cask 'airparrot' do
  version '2.6.1'
  sha256 'b1077f9c9eb6036451cce601798f566b0156bff7d5f1635ef60c915f7370efac'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: 'bf3c7a9f1f3aca05a01f79f3e3e2b43e6c596c8d1670352e7f8892a0da7ee9d4'
  name 'AirParrot'
  homepage 'https://www.airsquirrels.com/airparrot/'

  app 'AirParrot 2.app'
end
