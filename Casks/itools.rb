cask :v1 => 'itools' do
  version '2.4.6'
  sha256 '412dcd5a082ebf88566a4422e4c1d127e063a65ad9d8f3917e0b29e871da6783'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac'
  license :gratis

  app 'iTools.app'
end
