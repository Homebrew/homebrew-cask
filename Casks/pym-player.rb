cask 'pym-player' do
  version '6.0.12,587'
  sha256 'b3c7e94d3ee72696b960d374297de690064b7d9c8b67c0400cdcbf8d795a67e9'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player/'

  app 'PYM Player.app'
end
