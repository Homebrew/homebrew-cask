cask 'mimolive' do
  version '4.7.3-27002'
  sha256 '0025bf0c17159874580158fbd3be9c5f8630417e5e9386c03f52d2e3f47d8fcb'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
