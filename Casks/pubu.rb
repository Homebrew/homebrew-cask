cask 'pubu' do
  version '2.0.0'
  sha256 'f0ce2abd31867de7f545a1d9a04a082e597178ca6697c0ae9c3404eb1f7c1b71'

  # facecdn.u.qiniudn.com was verified as official when first introduced to the cask
  url "http://facecdn.u.qiniudn.com/downloads/%E7%80%91%E5%B8%83_OSX_V#{version}_Beta.zip"
  name '瀑布'
  homepage 'https://pubu.im'

  app '瀑布.app'
end
