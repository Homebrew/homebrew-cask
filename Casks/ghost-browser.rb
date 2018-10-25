cask 'ghost-browser' do
  version '2.1.0.3'
  sha256 'fb84349fe735087bc4a3f72f5d45b69c7c1a99bde68b6d365edaa8e507936b46'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
