cask 'ghost-browser' do
  version '2.1.1.13'
  sha256 '7ade4f4f6d83ba3bfc74ba84e33ac734e9fab3709e4c4be3023583b26c675dc1'

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
