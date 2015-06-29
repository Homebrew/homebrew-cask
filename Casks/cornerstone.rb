cask :v1 => 'cornerstone' do
  version '2.7.17'
  sha256 '792882881b5e1f7642433f720e1673f7711d5dfca3d333e7a0fe5c7783092f09'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '9c86ba0e2bdbcede056976040a507ebd3c34f4229ae2fd1fa402ab937adc95e6'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
