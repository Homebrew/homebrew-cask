cask 'itools' do
  version '2.8.7'
  sha256 'f49b075991705f57de4e46cdb6ae9ca5f7d995dba8d528c5c48f1cc31ff23dc3'

  # dl2.itools.hk/dl was verified as official when first introduced to the cask
  url "http://dl2.itools.hk/dl/iTools64_#{version}.dmg"
  name 'iTools'
  homepage 'http://pro.itools.cn/mac/english'

  app 'iTools.app'
end
