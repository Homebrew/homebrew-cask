cask :v1 => 'cornerstone' do
  version '2.7.18'
  sha256 'caddc967fa98693d005383d133e79ee20cebc85aabcffe39bbc8c1ac77d51306'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => 'a7dfb9c52e5389f9182160a1390a0319b0c363b08318a6e6ca036f88f5b348ab'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
