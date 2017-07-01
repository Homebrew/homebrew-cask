cask 'handshaker' do
  version '2.1.1'
  sha256 '35f77d7991b30f8bbd062ea23644c1a45e61058722ee43f2885c2eaa2cae7022'

  # dl2.smartisan.cn was verified as official when first introduced to the cask
  url "http://dl2.smartisan.cn/app/HandShaker.v#{version}.dmg"
  appcast 'https://sf.smartisan.com/update.plist',
          checkpoint: '6acfae4d43e92c8314b76a685d37452ea7477230de6405f54c331eec15274c00'
  name 'HandShaker'
  homepage 'http://www.smartisan.com/apps/'

  app 'HandShaker.app'
end
