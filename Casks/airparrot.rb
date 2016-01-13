cask 'airparrot' do
  version '2.3.0'
  sha256 'e407d950566f9960bfaaa1046212eddf8dafb87e19710b38a500542f717bd483'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          :checkpoint => '24934e27f732eae6b293309d29d1ad0a7e23ed4ac835a8f1b89539390d130c3f'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
