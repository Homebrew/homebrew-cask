cask :v1 => 'propresenter' do
  version '5.2.8'
  sha256 '47981ded0b025db373897b0103e9fa2894f4f0a073596da3725a739d33716e11'

  url "https://www.renewedvision.com/downloads/ProPresenter5_#{version}_b11499.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter5.php',
          :sha256 => 'f70029136ad0273f64bdbe6eff1d838e18dba1a1e0c3fe6e85c88909fe4cbf64'
  homepage 'http://www.renewedvision.com/propresenter.php'
  license :unknown    # todo: improve this machine-generated value

  app 'ProPresenter 5.app'
end
