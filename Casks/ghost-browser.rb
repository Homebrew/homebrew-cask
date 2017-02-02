cask 'ghost-browser' do
  version '1.0.3.6'
  sha256 'c04f6f1e3c64c20d4d9fad06e1620454f64f04a5c1603664190c2189c947ed0e'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
