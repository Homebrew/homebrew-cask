cask 'pdf-expert' do
  version '2.5.7,691'
  sha256 'c69c9209da33dd0c47ecb7aa39f0aaf8f48374f2b38b98170f7a2f55b5c2d61b'

  # d1ke680phyeohy.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://d1ke680phyeohy.cloudfront.net/versions/#{version.after_comma}/PDFExpert.dmg"
  appcast 'https://d1ke680phyeohy.cloudfront.net/release/appcast.xml'
  name 'PDF Expert'
  homepage 'https://pdfexpert.com/'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'PDF Expert.app'
end
