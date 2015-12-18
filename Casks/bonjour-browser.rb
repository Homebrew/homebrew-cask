cask 'bonjour-browser' do
  version :latest
  sha256 :no_check

  url 'http://www.tildesoft.com/files/BonjourBrowser.dmg'
  name 'Bonjour Browser'
  homepage 'http://www.tildesoft.com/'
  license :gratis

  app 'Bonjour Browser.app'
end
