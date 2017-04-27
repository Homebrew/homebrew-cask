cask 'ghost-browser' do
  version '1.1.0.1'
  sha256 'b1a4ccc18edca262acdc09ed4095c5c8295ccc4c5d81478e83f468fdcd0aa92d'

  url "https://ghostbrowser.com/ghostdev/downloads/GhostBrowser-#{version}.dmg"
  name 'Ghost Browser'
  homepage 'https://ghostbrowser.com/'

  app 'Ghost Browser.app'
end
