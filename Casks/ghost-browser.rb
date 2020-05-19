cask 'ghost-browser' do
  version '2.1.1.12'
  sha256 '81c1e2da47c5f7b1d1892cebe91b5fd755699110d2ae9ab7248e8bc7a3853780'

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
