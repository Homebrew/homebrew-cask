cask :v1 => 'propresenter' do
  version '6.0.7_b14138'
  sha256 'bd2c90621920a827ceedad3be4e0c02a3ab80c430383ebd3ed540a23aa4de24c'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => '405dcd0e0d1c9c79fed50ecb6150076f360b6acb232f351b83c26dabb4dca81d'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
