cask :v1 => 'cornerstone' do
  version '2.7.16'
  sha256 '4898f5c4a5d1e1ab30c6e6eef55f3854ce5cd31292c554ef51b3f8470969caf3'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'http://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '333fee9fc2c478a0d5305ad2d9faecdb2c44e5554e8d43762c0917a7531fb145'
  name 'Cornerstone'
  homepage 'http://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
