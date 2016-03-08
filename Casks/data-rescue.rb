cask 'data-rescue' do
  version '4.2.1'
  sha256 '2f713f61dd40619029ccaaa3bcc85cc56e6e2cc099fd39649741c7ad069fb948'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}.dmg"
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          checkpoint: 'e6be130a3e96ae353a272f459a7558251c4ba69585efc708f1730470d3bc9411'
  name 'Data Rescue 4'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'
  license :commercial

  app 'Data Rescue 4.app'
end
