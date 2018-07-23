cask 'ocrkit' do
  version '18.4.19,cf4278314ef8e4b996e1b798d8eb92cf'
  sha256 'b8054ebca6e1417eac12255bb47f3320422f736dc6a8ceb70f3198386f9869ea'

  # exactcode.de was verified as official when first introduced to the cask
  url "https://dl.exactcode.de/tmp/#{version.after_comma}/OCRKit-#{version.before_comma}.dmg"
  name 'OCRKit'
  homepage 'https://ocrkit.com/'

  app 'OCRKit.app'
end
