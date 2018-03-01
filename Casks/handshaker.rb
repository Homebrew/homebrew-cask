cask 'handshaker' do
  version '2.5.4'
  sha256 '96843644bf01c83883226ed9108419a2b76dd33f1b00ce6efd7648370b60d0aa'

  # dl2.smartisan.cn was verified as official when first introduced to the cask
  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.dmg"
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '6cdb44644195de046cb5b1ec50c724178062991585da8ab9fa11d59d45b641e4'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
