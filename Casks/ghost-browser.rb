cask 'ghost-browser' do
  version '1.1.0.4'
  sha256 '61603e231b17f32f34363b9bf51bc2bc4522aa0f32ad9e3386ee86a37669fa57'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
