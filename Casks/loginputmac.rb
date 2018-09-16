cask 'loginputmac' do
  version '1.16.1,2758'
  sha256 '95577fba9ff26aaaba510a895f1bf3605100d3258e7dfcea0d803f3087a3832d'

  # nzhm461a0.qnssl.com was verified as official when first introduced to the cask
  url "https://nzhm461a0.qnssl.com/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
