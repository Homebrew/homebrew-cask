cask 'mimolive' do
  version '4.7.1-26979'
  sha256 '8ada458d875dbaa608794032d5fabc04d1293003211a9f74181f567d6bfef674'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
