cask 'ghost-browser' do
  version '2.1.1.6'
  sha256 'c9ae83ed5331d6c1624e3d198e07b0dbc610bd41f3de910abbea9d98e2b9ac7d'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
