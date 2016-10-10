cask 'djay-pro' do
  version '1.3.1,201604300753'
  sha256 '6e38d3eb23eb3b2e0e2394bd4029211fae2c27184c295911c9d163f004169fdd'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: '48e1032e6268f88bddc1757b2fc0294f9b7a027234ed85bbab06506315fdcbb1'
  name 'Algoriddim djay Pro'
  homepage 'http://algoriddim.com/djay-mac'

  app 'djay Pro.app'
end
