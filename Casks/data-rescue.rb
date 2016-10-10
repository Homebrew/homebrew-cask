cask 'data-rescue' do
  version '4.3'
  sha256 '64b9571df129a5f9a1a48b4b7c69a1f590e25e38ef6ea7a46952463d0317f45a'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          checkpoint: 'b21030a529148a9ad0dd85bd6b3a075709e6386b53f40eeab31e33daf119d768'
  name 'Data Rescue 4'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'

  app 'Data Rescue 4.app'
end
