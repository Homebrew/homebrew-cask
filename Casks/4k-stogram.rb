cask '4k-stogram' do
  version '2.4.2.1306'
  sha256 '5e6b21b06587a98a048640f1fe6e653a40e4f2d4489701995c64e1520580e3cf'

  url "https://downloads2.4kdownload.com/app/4kstogram_#{version.major_minor}.dmg"
  appcast 'https://www.4kdownload.com/download',
          checkpoint: '49ff507a887439ff101f36b84c58788834a7a4a7638127609c8a49fa6278b627'
  name '4K Stogram'
  homepage 'https://www.4kdownload.com/products/product-stogram'

  app '4K Stogram.app'
end
