cask 'mimolive' do
  version '4.7.2-26993'
  sha256 '9905d42f36a4fe4480d155448627a5cba266ce67b8dd3c671a643b40a904d122'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
