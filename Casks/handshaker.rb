cask 'handshaker' do
  version '2.5.3'
  sha256 '753bafec261c1e9a4e63160f06970e79afac0fd56e3a71bf5665ac6b054c79cd'

  # dl2.smartisan.cn was verified as official when first introduced to the cask
  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.dmg"
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '47a208f3481f017df96bc28d0b9e9c6a4617054a1aeb81f8086b9590b8a17c8c'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
