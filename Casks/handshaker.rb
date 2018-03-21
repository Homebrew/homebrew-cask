cask 'handshaker' do
  version '2.5.5'
  sha256 'de34c82254033d58511a107d98916a31f4d5b8e270b4431f01c664b243d99adf'

  # dl2.smartisan.cn was verified as official when first introduced to the cask
  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.dmg"
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: 'dadfb68ba230f8a4f85c6965d883c98add9a3bb6987e3e9af860158c6c52753d'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
