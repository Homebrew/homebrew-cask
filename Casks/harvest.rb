cask 'harvest' do
  version '2.1.15'
  sha256 '42c4add82b44df516996e193e18183c811c4fed988f39cc7823bd41428f1b922'

  url "https://www.getharvest.com//harvest/mac/Harvest-#{version}.zip"
  appcast 'https://www.getharvest.com/harvest/mac/appcast.xml'
  name 'Harvest'
  homepage 'https://www.getharvest.com/mac-time-tracking'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Harvest.app'
end
