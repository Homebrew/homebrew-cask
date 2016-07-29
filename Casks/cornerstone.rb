cask 'cornerstone' do
  version '2.7.18'
  sha256 'caddc967fa98693d005383d133e79ee20cebc85aabcffe39bbc8c1ac77d51306'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed2.php',
          checkpoint: '6b45e1c9ab25d606dd6d80657848b20002fdd8abbb587610f9dd7840827f94fc'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
