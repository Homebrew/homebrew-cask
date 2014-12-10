cask :v1 => 'cornerstone' do
  version '2.7.10'
  sha256 '297237f24cbd605d6e7497fb893db3e7fbc6efef1333f5f25be8238a418d7650'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'http://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '333fee9fc2c478a0d5305ad2d9faecdb2c44e5554e8d43762c0917a7531fb145'
  homepage 'http://www.zennaware.com/cornerstone/index.php'
  license :unknown    # todo: improve this machine-generated value

  app 'Cornerstone.app'
end
