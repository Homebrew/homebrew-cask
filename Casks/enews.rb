cask 'enews' do
  version '1.1041'
  sha256 '58bbd0c8fbd0e1c03d2b74758735ec0f859c56cb021e37fcc9498313241dc454'

  url "http://www.xinhuaenews.com/download/eNewsMac_v#{version}.zip"
  name 'eNews采集'
  homepage 'https://www.xinhuaenews.com/'

  app 'eNews采集.app'
end
