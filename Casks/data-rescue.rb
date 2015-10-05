cask :v1 => 'data-rescue' do
  version '4.2'
  sha256 '1a8bc1c530aadd192b40a2e8aae7d074952b394ccd89c4f1197312dee50392d8'

  url "https://downloads.prosofteng.com/drmac/Data_Rescue_#{version}_US.dmg"
  name 'Data Rescue 4'
  appcast 'https://www.prosofteng.com/resources/dr4/dr4_appcast.xml',
          :sha256 => '7812fbe309ec361502dea912c99ce1668fa5a60891499de82b3c650f0b6cd19d'
  homepage 'https://www.prosofteng.com/products/data_rescue.php'
  license :commercial

  app 'Data Rescue 4.app'
end
