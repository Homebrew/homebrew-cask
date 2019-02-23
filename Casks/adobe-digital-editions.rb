cask 'adobe-digital-editions' do
  version '4.5.10'
  sha256 '33f784ab50188cc9e5a6c575a739af726cb1deda5970b075851e03b0e9b26d62'

  url "https://download.adobe.com/pub/adobe/digitaleditions/ADE_#{version.major_minor}_Installer.dmg"
  appcast 'https://www.adobe.com/solutions/ebook/digital-editions/download.html'
  name 'Adobe Digital Editions'
  homepage 'https://www.adobe.com/solutions/ebook/digital-editions.html'

  pkg "Digital Editions #{version.major_minor} Installer.pkg"

  uninstall pkgutil: 'com.adobe.adobedigitaleditions.app'

  zap trash: '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.adobe.adobedigitaleditions.app.sfl*'
end
