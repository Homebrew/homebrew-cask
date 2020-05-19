cask 'pdf-expert' do
  version '2.5.6,682'
  sha256 'a13723326ac6793812bc1bbc986b2cecbd63177833e41e84d06bc42e9f3a1fb9'

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
