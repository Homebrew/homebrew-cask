cask 'mimolive' do
  version '5.0-27482'
  sha256 '284a5cc354b0b580d0a4e32ef6f55ce36a44c3b0bb4c4db97b55c3e75e501806'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://sparkle.boinx.com/appcast.lasso?appName=mimoLive'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
