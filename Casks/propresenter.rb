cask :v1 => 'propresenter' do
  version '6.0.8_b15006'
  sha256 'd73286ba462820dc7c4885c2b67c7bef03751939f4440a51a205e0e97494263f'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => 'e5dddb99a9cf20e2ca9713fac7cf8651c725eee16f7071afc36539278fe7637c'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
