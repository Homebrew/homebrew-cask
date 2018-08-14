cask 'loginputmac' do
  version '1.15.1,2755'
  sha256 'a0f277667f41bcfafa20dae87cfa2e017d33527ed2fe7358610f6503239af7ba'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
