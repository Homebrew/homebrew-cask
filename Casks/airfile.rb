cask :v1 => 'airfile' do
  version '2.8.2'
  sha256 'ab8792e538462b8f8fc6b44af28dd2fe9d16af3f955cd2cfcc7ed6f88fb87e9a'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/airfile-static/__apps__/airfile/AirFile-#{version}.zip"
  homepage 'http://airfileapp.tumblr.com/'
  license :commercial

  app 'AirFile.app'
end
