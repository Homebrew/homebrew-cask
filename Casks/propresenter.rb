cask 'propresenter' do
  version '6.0.13_b15063'
  sha256 '5ce3bd95b00f860c645f2f867fb7ccc1051b068a10c4a4730bfd96871a0049a5'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: 'bd955f34f485f7b042d69968e5f653e658b540b941c0812ea0db222f92487b08'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
