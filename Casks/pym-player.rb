cask 'pym-player' do
  version '6.0.10,563'
  sha256 '4cb727e16412cb992a1286921c813b9db034404cc355896768245e65e5e054f1'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player/'

  app 'PYM Player.app'
end
