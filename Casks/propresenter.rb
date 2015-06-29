cask :v1 => 'propresenter' do
  version '6.0.4_b13888'
  sha256 '72d8508793ef7ad997060505b53a29ea79a2e76ee75b38f70eeaa2a89fd66643'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => '2cb31297b4531c578b3a84b07638c7e0f9e07af1f4591b97bba44e438a8a3dd7'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
