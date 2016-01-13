cask 'airparrot' do
  version '2.3.0'
  sha256 'e407d950566f9960bfaaa1046212eddf8dafb87e19710b38a500542f717bd483'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          :sha256 => '758a5fd4a47e64ba421cf6b3187b0b49af0373e246c376e6c7e18cd675b508fb'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
