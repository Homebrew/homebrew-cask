cask 'ocrkit' do
  version '18.7.15'
  sha256 'b8054ebca6e1417eac12255bb47f3320422f736dc6a8ceb70f3198386f9869ea'

  # dl.exactcode.de was verified as official when first introduced to the cask
  url "http://dl.exactcode.de/sync/#{version.major}/OCRKit-#{version}.tar.gz"
  appcast 'https://synchronicity.exactcode.de/OCRKit/seed-Darwin.xml'
  name 'OCRKit'
  homepage 'https://ocrkit.com/'

  app 'OCRKit.app'
end
