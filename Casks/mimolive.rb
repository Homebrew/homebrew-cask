cask 'mimolive' do
  version '5.1-27588'
  sha256 '0a93fed3bd04fb46e23dc307694fddfae6aa65825b5061ff6cceaba21113f4e0'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
