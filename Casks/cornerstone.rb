cask :v1 => 'cornerstone' do
  version '2.7.17'
  sha256 '792882881b5e1f7642433f720e1673f7711d5dfca3d333e7a0fe5c7783092f09'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'http://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '333fee9fc2c478a0d5305ad2d9faecdb2c44e5554e8d43762c0917a7531fb145'
  name 'Cornerstone'
  homepage 'http://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
