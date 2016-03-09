cask 'propresenter' do
  version '6.0.16_b15090'
  sha256 '0a2f535906cd1432906e64475ba4578a8c646e5c482079cf0dc5514efdc49288'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'fe047db5e92869a33561fab1282a42ace93c260fe20ced0ab19e4216e2d95681'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
