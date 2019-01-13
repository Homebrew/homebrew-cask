cask 'loginputmac' do
  version '2.1.3,8771'
  sha256 'eec691c8725a6b19911d63191c04f49ed014bb1cb988b9319589d4d1052f11d7'

  # loginput-mac2.content-delivery.top was verified as official when first introduced to the cask
  url "https://loginput-mac2.content-delivery.top/LogInputMac#{version.major}.app#{version.after_comma}.zip"
  appcast "https://im.logcg.com/appcast#{version}.xml"
  name 'LoginputMac'
  homepage "https://im.logcg.com/loginputmac#{version.major}"

  auto_updates true

  app 'LogInputMac2.app'
end
