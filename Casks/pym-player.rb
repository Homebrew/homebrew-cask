cask 'pym-player' do
  version '7.0.0,329'
  sha256 '90ce8010fcfba46a3c8b82ab7097a172df57ac881a8c273d736d71426a62316d'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.major}_#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player/'

  app 'PYM Player.app'
end
