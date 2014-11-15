cask :v1 => 'itools' do
  version '2.4.2'
  sha256 'd927a4e6d4f96b1641e48ce09c083d7cba92ba00694eb96a9907bd1c4a7b2a9e'

  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  homepage 'http://pro.itools.cn/mac'
  license :unknown

  app 'iTools.app'
end
