cask 'propresenter' do
  version '6.0.21_b15122'
  sha256 '9b4938becdd0e8dd561c287217b758e4c59573a28bf8ad7a93b2b208d2d06290'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'f04881c065c2168c32450ee40c62eca046536197870ae65b21c9bf459358596f'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
