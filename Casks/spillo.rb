cask 'spillo' do
  version '117_1.7.1'
  sha256 '5025aa77e6c7779f146a66e92b75b1319b455f216e098fcde8d11299215fe31f'

  # s3.amazonaws.com/bananafish-builds/spillo was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/bananafish-builds/spillo/spillo_#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '1b304b10b8fb1d7a093d35b348a12ba4a8e2c4d2599f5c01c82723ad18de575f'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
