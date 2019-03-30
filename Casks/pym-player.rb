cask 'pym-player' do
  version '6.0.11,578'
  sha256 '97dd4ec2805c069e893ace54d655fee4887147a37aab5a2c1aa789020522c661'

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'http://pym.uce.pl/pym-player/'
  name 'PYM Player'
  homepage 'http://pym.uce.pl/pym-player/'

  app 'PYM Player.app'
end
