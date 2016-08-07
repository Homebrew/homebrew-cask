cask 'data-rescue' do
  version '4.2.3'
  sha256 '1b2502bcba662ee01f59b9f118e7332d0d4f9d59a0b44f00abe0bdbfb37bb53f'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          checkpoint: '178efedbf100f9e99fcc8ca74d53a6017033559af1ab62b14a82b2ee620aa226'
  name 'Data Rescue 4'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'
  license :commercial

  app 'Data Rescue 4.app'
end
