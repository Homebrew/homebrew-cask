cask 'loginputmac' do
  version '1.13,2729'
  sha256 '9b61f528abfca0e3dfb638a72f759a57fa8748203333ca07d9fa7da184828edc'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: '94ba58615844690fc7f537d36c1960c1bae27bb74b6d49c2ed1de7c5dbdc1c52'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
