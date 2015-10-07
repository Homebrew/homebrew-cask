cask :v1 => 'cornerstone' do
  version '2.7.17'
  sha256 '792882881b5e1f7642433f720e1673f7711d5dfca3d333e7a0fe5c7783092f09'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => 'a7dfb9c52e5389f9182160a1390a0319b0c363b08318a6e6ca036f88f5b348ab'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
