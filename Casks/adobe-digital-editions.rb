cask :v1 => 'adobe-digital-editions' do
  version '4.0.2'
  sha256 'd91535d8ca1cb4d7cdbb96c2820cf9c79524369acffa3d4e97f53e30812ae98a'

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_4.0_Installer.dmg"
  name 'Adobe Digital Editions'
  homepage 'https://www.adobe.com/solutions/ebook/digital-editions.html'
  license :proprietary

  pkg "Digital Editions #{version} Installer.pkg"

  uninstall :pkgutil => 'com.adobe.adobedigitaleditions.app'
end
