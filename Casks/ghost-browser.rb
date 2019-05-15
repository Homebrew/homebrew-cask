cask 'ghost-browser' do
  version '2.1.0.7'
  sha256 '24549887be2dd3a94c3b462675f42c0ea969857742ed030ebb290727d6080079'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
