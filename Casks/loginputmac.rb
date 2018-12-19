cask 'loginputmac' do
  version '1.18,2768'
  sha256 'd3f87ba0a1249ff6a81af2f90fe034ff8f283a1bdb39d6b19dc08a88b66ce41c'

  # ebypiovrn28j.maimaim.ai was verified as official when first introduced to the cask
  url "https://ebypiovrn28j.maimaim.ai/LogInputMac#{version.after_comma}.app.zip"
  appcast 'https://im.logcg.com/appcast.xml'
  name 'LoginputMac'
  homepage 'https://im.logcg.com/loginputmac'

  auto_updates true

  app 'LogInputMac.app'
end
