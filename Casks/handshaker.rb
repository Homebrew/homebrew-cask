cask 'handshaker' do
  version '2.5.6'
  sha256 'a263e0713a2d6d41b7fb9323fa0b145e35a8fc9086b6ff6253f9b9abda7ede16'

  # dl2.smartisan.cn was verified as official when first introduced to the cask
  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.dmg"
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '652bf99baae7e0a9c0da1bde3a86ad2fd7df318912e24e8323bf9475a28a309c'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
