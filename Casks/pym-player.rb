cask 'pym-player' do
  version '6.0.10,563'
  sha256 '142529b44d496bd2e182a348bd4072d466fbc42021d26c68cacbb4e5ce1dbe21'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player/'

  app 'PYM Player.app'
end
