cask 'ghost-browser' do
  version '2.1.0.5'
  sha256 '863c3940593a15a70eec3c028b01e4da37ae3cb1e33f7c7ddf6de5ff5985b5f8'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
