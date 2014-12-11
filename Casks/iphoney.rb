cask :v1 => 'iphoney' do
  version '1.2'
  sha256 'f5bffb663944eea228bb9acb315ac23e8f95b6562ae71d0cb031ecc046f72ff4'

  url "https://download.marketcircle.com/s3/iPhoney_#{version}.zip"
  appcast 'http://www.marketcircle.com/iphoney/iPhoneyAppcast.xml',
          :sha256 => '6a02ab8aa71ab8c6dad67545d6f60c1e74c5a86688bdb5c3600b27f7c04c3edf'
  homepage 'https://www.marketcircle.com/iphoney'
  license :unknown    # todo: improve this machine-generated value

  app 'iPhoney.app'
end
