cask 'ghost-browser' do
  version '1.1.0.3'
  sha256 'f7199c5bbc56aaf64e90e6cc67868f19189f2bd4d3f06fdfe9382d68323826bc'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
