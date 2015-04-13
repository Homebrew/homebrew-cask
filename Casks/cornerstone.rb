cask :v1 => 'cornerstone' do
  version '2.7.14'
  sha256 '55cc253f7eabfe2aaaf3a9ba1d51d77e8bad8ec20035340a01054285e5085d51'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'http://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '333fee9fc2c478a0d5305ad2d9faecdb2c44e5554e8d43762c0917a7531fb145'
  name 'Cornerstone'
  homepage 'http://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
