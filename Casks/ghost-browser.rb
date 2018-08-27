cask 'ghost-browser' do
  version '1.1.0.7'
  sha256 '5113dcc38084f5e3baeb71258da133f3f8155478205358e62561c8fc7da4fef0'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
