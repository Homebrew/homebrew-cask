cask 'harvest' do
  version '2.1.14'
  sha256 '763cecd2b10e390d096864ecfbefeb4683fc827c510d6e678822d8aa5e298f6e'

  url "https://www.getharvest.com//harvest/mac/Harvest-#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
