cask 'mimolive' do
  version '4.5.1-26768'
  sha256 '38a25ff5bf5178ba37f251ff9efb32da61cd38ea4c4411b80fc7c56ab6b1d35e'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
