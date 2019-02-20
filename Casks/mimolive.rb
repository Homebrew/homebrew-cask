cask 'mimolive' do
  version '4.7-26965'
  sha256 '615afed0b160a7ccae5bd59bb0b94577100960109bcdb952d145612f796b6352'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
