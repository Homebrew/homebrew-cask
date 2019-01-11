cask 'mimolive' do
  version '4.6-26922'
  sha256 '9f7f60e6c660b5064d0bac37d84c767c8575345a7ce19c74d4a099638ef3206e'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
