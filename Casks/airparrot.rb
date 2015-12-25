cask 'airparrot' do
  version '2.3.0'
  sha256 'e407d950566f9960bfaaa1046212eddf8dafb87e19710b38a500542f717bd483'

  url "http://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  name 'AirParrot'
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          :sha256 => '3bc86152636f525c719ca4b8e46c5b43430e4f86cb393b94a4c7540e85490493'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
