cask 'loginputmac' do
  version '1.17,2766'
  sha256 '8ceae77712d165e6e4b74d36fc3d3177de4536e908b1354c3f38a549c8a64d4e'

  # ebypiovrn28j.maimaim.ai was verified as official when first introduced to the cask
  url "https://ebypiovrn28j.maimaim.ai/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
