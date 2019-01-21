cask 'ghost-browser' do
  version '2.1.0.4'
  sha256 '992ef683b55d2d2e0f0eef52469b840e8ad6f318a5074137cd425263e669fc11'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
