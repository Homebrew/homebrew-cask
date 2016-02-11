cask 'airfile' do
  version '2.8.2'
  sha256 'ab8792e538462b8f8fc6b44af28dd2fe9d16af3f955cd2cfcc7ed6f88fb87e9a'

  # amazonaws.com/airfile-static was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/airfile-static/__apps__/airfile/AirFile-#{version}.zip"
  appcast 'https://s3.amazonaws.com/airfile-static/__apps__/airfile/appcast.xml',
          checkpoint: '0ce8f8b0bc9cfef1a125876fd721167b2457e63f7abae2f5d959686b6ed61a3e'
  name 'AirFile'
  homepage 'http://airfileapp.tumblr.com/'
  license :commercial

  app 'AirFile.app'
end
