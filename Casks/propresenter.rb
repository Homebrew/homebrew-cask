cask :v1 => 'propresenter' do
  version '6.0.11_b15037'
  sha256 'e8b8b19725d0ee9529d85f46037ba2ec9d058cb24c41cb30f08fbfa0ac3defa4'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => 'ad6ec9f08edbd83ab2963653f5cb4c739f6a94ae81c9c0f334de67a2833cff1a'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
