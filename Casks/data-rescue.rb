cask :v1 => 'data-rescue' do
  version '4.2.1'
  sha256 '2f713f61dd40619029ccaaa3bcc85cc56e6e2cc099fd39649741c7ad069fb948'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  name 'Data Rescue 4'
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          :sha256 => 'bf199865d7e920ed125bacaaa7a180cc8f782f9bf4373f7f9d925d064d94338c'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'
  license :commercial

  app 'Data Rescue 4.app'
end
