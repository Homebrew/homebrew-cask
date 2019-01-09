cask 'loginputmac' do
  version '1.20,3776'
  sha256 'c171a34b51304b8d230073035b9901b3b274b2a656f73dd723892c6e38414ab1'

  # loginput-mac2.content-delivery.top was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
