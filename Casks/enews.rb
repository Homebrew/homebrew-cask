cask 'enews' do
  version '1.001'
  sha256 '4f863dce925b123b363e08fac48efac5cb026970a57cd7cdbb0c879a925bf615'

  url "http://www.xinhuaenews.com/download/eNewsMac_v#{version}.zip"
  name 'eNews采集'
  homepage 'http://www.xinhuaenews.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'eNews采集.app'
end
