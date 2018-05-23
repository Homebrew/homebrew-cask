cask 'navicat-premium-essentials' do
  version '12.0.26'
  sha256 '6be93aefc82c02f6b185a47a142b158ac527847cec80e89a403b38cae48e76a7'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials",
          checkpoint: '267ce420731d35d7c3e12901a85987b6941ba556cc30ae6a7cc30e32f16765fe'
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
