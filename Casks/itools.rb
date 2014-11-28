cask :v1 => 'itools' do
  version '2.4.3'
  sha256 '4d17f188c710649a952eb66b75989fe739e848fc98db1970bf98fca0ae3f8cf9'

  url "http://dl2.itools.hk/dl/iTools_#{version}.dmg"
  homepage 'http://pro.itools.cn/mac'
  license :unknown

  app 'iTools.app'
end
