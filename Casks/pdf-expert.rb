cask 'pdf-expert' do
  version '2.5.2,668'
  sha256 'c75cb4a016b5bc61f6e29f839b39dcf69067cbc1700a0b86c570e973cb03383b'

  # d1ke680phyeohy.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
