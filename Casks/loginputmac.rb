cask 'loginputmac' do
  version '1.12,2716'
  sha256 'e825de66afa84ac9097a96b8e0e462bff5d12685097928ea67df5b793be7935a'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml',
          checkpoint: '214ca756c6a79f1aae382bcb58e9828a3768158a4afab3c5a0f320dde0a6ad78'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
