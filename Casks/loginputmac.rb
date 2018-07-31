cask 'loginputmac' do
  version '1.15,2754'
  sha256 '8e39668b5ac1753ebdf7fb0a17bb33bfe2a53c4201746442ab532ce6da00eb7b'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
