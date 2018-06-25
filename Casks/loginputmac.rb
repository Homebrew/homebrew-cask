cask 'loginputmac' do
  version '1.14,2741'
  sha256 'f8f8b7fbda7bcfca80fdc80a3cb7e840c2fe151c3869c51ecfd197267d7c3c7f'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
