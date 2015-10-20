cask :v1 => 'itools' do
  version '2.7.0'
  sha256 'b05fdfd3820ffe3f35947cfb17e65a75cf17e1f6e57717f0eb5e05f4d951588b'

  # itools.hk is the official download host per the vendor homepage
  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'
  license :gratis

  app 'iTools.app'
end
