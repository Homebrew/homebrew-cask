cask 'navicat-premium-essentials' do
  version '12.0.28'
  sha256 'fa84e4bcae8248a33e7f9d11c2b6650233496bf364c6dba93b0bf6261fd616ba'

  url "http://download.navicat.com/download/navicatess#{version.major_minor.no_dots}_premium_en.dmg"
  appcast "https://www.navicat.com/updater/v#{version.major_minor.no_dots}/sysProfileInfo.php?appName=Navicat%20Premium%20Essentials"
  name 'Navicat Premium Essentials'
  homepage 'https://navicat.com/products/navicat-essentials'

  app 'Navicat Premium Essentials.app'
end
