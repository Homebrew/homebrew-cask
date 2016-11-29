cask 'keycue' do
  version '8.2'
  sha256 'd0a455b983ef966b6e1741972cce25745410b0e639f5482c4e4696c9c649844e'

  url "http://www.ergonis.com/downloads/products/keycue/KeyCue#{version.no_dots}-Install.dmg"
  name 'KeyCue'
  homepage 'http://www.ergonis.com/products/keycue/'

  app 'KeyCue.app'
end
