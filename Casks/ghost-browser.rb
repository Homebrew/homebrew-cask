cask 'ghost-browser' do
  version '2.1.1.3'
  sha256 '7b7a3a3a40abf492cb8f0cb5ee12b7292e0169c0b586cfcc0d0e1d063d528021'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
