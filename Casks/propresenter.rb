cask :v1 => 'propresenter' do
  version '6.0.12_b15052'
  sha256 'c1dde213162bfa1e0adff980aaebde486fd7efd9f8cc5f09e87f9a6448202131'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => '1379f17e780a5c27d690002b96c2dc73aeb2bc4a49b454a66fac76dd60920edc'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
