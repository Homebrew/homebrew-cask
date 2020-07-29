cask 'ghost-browser' do
  version '2.1.1.14'
  sha256 '6d5c25b503fe6d578cc4f0b4693687bd4a89fb543b092fd113afc1f432df85f6'

  # ghostbrowser.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ghostbrowser.s3.amazonaws.com/downloads/GhostBrowser-#{version}.dmg"
  appcast 'https://ghostbrowser.s3.amazonaws.com/updates/changelog.html'
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/download/'

  app 'Ghost Browser.app'
end
