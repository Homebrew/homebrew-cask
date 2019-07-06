cask 'pdf-expert' do
  version '2.4.28,636'
  sha256 '3279ebad5021a55469c999ace4be44fd488dc6d3181478b5892b344e2b803ba0'

  # d1ke680phyeohy.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
