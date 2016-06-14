cask 'data-rescue' do
  version '4.2.2'
  sha256 '5ddf5c7b4b634ba84e4dd1733edc06ce049eb99eb233952174d062ef365e38ed'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          checkpoint: '3ed55e1cee84f1b9c91a7977f1fec67fc6c37194ba8b78abdd7a917f0029d0dc'
  name 'Data Rescue 4'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'
  license :commercial

  app 'Data Rescue 4.app'
end
