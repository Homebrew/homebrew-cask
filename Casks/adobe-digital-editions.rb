cask 'adobe-digital-editions' do
  version '4.5.4'
  sha256 :no_check # required as upstream package is updated in-place

  url "http://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version.major_minor}_Installer.dmg"
  name 'Adobe Digital Editions'
  homepage 'https://www.adobe.com/solutions/ebook/digital-editions.html'

  pkg "Digital Editions #{version} Installer.pkg"

  uninstall pkgutil: 'com.adobe.adobedigitaleditions.app'

  zap delete: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adobe.adobedigitaleditions.app.sfl'
end
