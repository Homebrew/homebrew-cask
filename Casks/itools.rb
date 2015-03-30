cask :v1 => 'itools' do
  version '2.5.0'
  sha256 '196ad7aec8732ecdc66b0281fe2065eb5abe2ec97fe260f5de4b144a2bd721ab'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'
  license :gratis

  app 'iTools.app'
end
