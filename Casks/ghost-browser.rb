cask 'ghost-browser' do
  version '1.0.3.10'
  sha256 'ab09db530e93a0c3fb05c121bb5a430f7ddf668fbd979683d0a093484efecf1a'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
