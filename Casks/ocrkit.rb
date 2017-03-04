cask 'ocrkit' do
  version '15.11.24,62c3a0fc70ed4e5c64527ba781d634bc'
  sha256 '39502f49af57eea167232cdb7cc71b9f2c102aea611dd11777ba95166368bb7a'

  # exactcode.de was verified as official when first introduced to the cask
  url "https://dl.exactcode.de/tmp/#{version.after_comma}/OCRKit-#{version.before_comma}.dmg"
  name 'OCRKit'
  homepage 'https://ocrkit.com/'

  app 'OCRKit.app'
end
