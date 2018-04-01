cask 'enews' do
  version '1.001'
  sha256 '4f863dce925b123b363e08fac48efac5cb026970a57cd7cdbb0c879a925bf615'

  url "http://www.xinhuaenews.com/download/eNewsMac_v#{version}.zip"
  name 'eNews采集'
  homepage 'https://www.xinhuaenews.com/'

  app 'eNews采集.app'
end
