cask 'propresenter' do
  version '6.0.18_b15107'
  sha256 '16b935c1902626a5711604bf96bedbeccb859b9b4a7ce9e8ce57ff586fe906eb'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: '3838dbec375e3bc56a26ba2340a5ec4a278c302b92b0c54f3c02e9333020f3a2'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
