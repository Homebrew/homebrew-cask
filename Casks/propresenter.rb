cask :v1 => 'propresenter' do
  version '6.0.5_b13981'
  sha256 '29a50af57952994866dbcaed20e3c901b264b2f188a4a9b5f9908d3b73dddf6c'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          :sha256 => 'dc7d004e9fac02ed2116ebc1c555db24d656dd5cfe57996b7eae6d10aa75161e'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
