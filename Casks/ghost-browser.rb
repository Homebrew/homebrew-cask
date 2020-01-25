cask 'ghost-browser' do
  version '2.1.1.8'
  sha256 '6bf085ca84cd2542fa5078a7c2da3c4853391d56ceabd6cce80000625eaf93c2'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
