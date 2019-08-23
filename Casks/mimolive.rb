cask 'mimolive' do
  version '5.2-27661'
  sha256 '20d06c772733fb9eee92143418ee8b430ab75b952f97bb46011677e46640d46b'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
