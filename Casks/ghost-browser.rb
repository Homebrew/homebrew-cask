cask 'ghost-browser' do
  version '2.1.1.7'
  sha256 '01024ebb5e2636525cb1f3e3a75c305c6a3a5c9f9cc601319cc260511f7d9f23'

  # ghostbrowser.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
