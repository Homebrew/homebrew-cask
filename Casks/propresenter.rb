cask 'propresenter' do
  version '6.0.12_b15052'
  sha256 'c1dde213162bfa1e0adff980aaebde486fd7efd9f8cc5f09e87f9a6448202131'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :checkpoint => '3c7e2e98aa1584f563214982667bdae02b2d365aefb39ae3e0a8a951d15681ca'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
