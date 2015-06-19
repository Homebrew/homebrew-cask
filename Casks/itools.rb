cask :v1 => 'itools' do
  version '2.5.4'
  sha256 'e09f32ec189c2d282d481ecd51f6d9f5aeb9447569ebd89621c2f8199086f1c0'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'
  license :gratis

  app 'iTools.app'
end
