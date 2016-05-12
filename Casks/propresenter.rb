cask 'propresenter' do
  version '6.0.19_b15114'
  sha256 'c3749e53f8bbb41e7b56e43b0e5c7be25fe6a37be264a016f66437a08126d7c4'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: '14e44977ad86b9ecbddfc1062aa36fc5f54ca2795fb626dd0d4c6abf40e51b5b'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
