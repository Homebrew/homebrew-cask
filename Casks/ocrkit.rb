cask 'ocrkit' do
  version '18.7.15'
  sha256 'f6cdae2d312279218e86ebfe4aff9e67bf21f130534f9ed29e249021bc148af7'

  # dl.exactcode.de was verified as official when first introduced to the cask
  url "http://dl.exactcode.de/sync/#{version.major}/OCRKit-#{version}.tar.gz"
  appcast 'https://synchronicity.exactcode.de/OCRKit/seed-Darwin.xml'
  name 'OCRKit'
  homepage 'https://ocrkit.com/'

  app 'OCRKit.app'
end
