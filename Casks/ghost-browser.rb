cask 'ghost-browser' do
  version '2.1.1.4'
  sha256 '2d87039ff8228f4a6663dc1ef878592dbd72c197adea032031613a8cd2bce28d'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
