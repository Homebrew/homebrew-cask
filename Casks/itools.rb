cask 'itools' do
  version '2.8.6'
  sha256 '928a154c60a01a13c79273007a15403e7c0db50d40afb73e7691b7016c85ce6e'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'
  license :gratis

  app 'iTools.app'
end
