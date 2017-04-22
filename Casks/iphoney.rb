cask 'iphoney' do
  version '1.2'
  sha256 'f5bffb663944eea228bb9acb315ac23e8f95b6562ae71d0cb031ecc046f72ff4'

  url "https://download.marketcircle.com/s3/iPhoney_#{version}.zip"
  appcast 'https://www.marketcircle.com/iphoney/',
          checkpoint: 'f6a7f4fec4cd1b472a052c3409861e64923e1c2dcff1a653d996a7f4c98c69df'
  name 'iPhoney'
  homepage 'https://www.marketcircle.com/iphoney/'

  app 'iPhoney.app'
end
