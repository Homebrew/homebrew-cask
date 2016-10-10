cask 'propresenter' do
  version '6.1.1_b15150'
  sha256 'e54e0e87b0cac71a69e49f95116e2135d22975e22706ba15112a8f345512265b'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'acc463698d4f9c7030ad51e0bffdb32bbde1647dce8bc6ff38999da98905aa08'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'

  app 'ProPresenter 6.app'
end
