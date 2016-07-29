cask 'propresenter' do
  version '6.1.0_b15136'
  sha256 '5abf4f316ae1c07bd0f5014393e75a45ccdcbe89e041d0772389c3b6a05bdf50'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'cd9d81e4df1d47550658d6f1afccb4f798c53b1b53e21fa054e9c11be29bbcf9'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
