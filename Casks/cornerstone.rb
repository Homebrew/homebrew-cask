cask 'cornerstone' do
  version '2.7.18'
  sha256 'caddc967fa98693d005383d133e79ee20cebc85aabcffe39bbc8c1ac77d51306'

  url "https://www.zennaware.com/cornerstone/downloads/Cornerstone-#{version}.zip"
  appcast 'https://www.zennaware.com/cornerstone/appcast/feed2.php',
          :sha256 => '1d5257d85a9d9eced64b316843f9a90e125ba1826b28cd6e71d443e44550fc11'
  name 'Cornerstone'
  homepage 'https://www.zennaware.com/cornerstone/'
  license :commercial

  app 'Cornerstone.app'
end
