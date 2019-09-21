cask 'pdf-expert' do
  version '2.4.29,641'
  sha256 'e61de5665f471a8ad8a5a0b9e9775573c358e17e765cffcdc354358ad290a536'

  # d1ke680phyeohy.cloudfront.net was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
