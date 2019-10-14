cask 'ghost-browser' do
  version '2.1.1.5'
  sha256 '089cf6b6d46e7e430471a4cc007a7c4dc5dcc29a8ce90833fb15f1d0882e6f02'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
