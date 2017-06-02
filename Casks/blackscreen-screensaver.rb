cask 'blackscreen-screensaver' do
  version '1.1'
  sha256 'ce4fbc714a4808947304f40874a9a67458076408131a7fce66dc1417ab4c5c2d'

  url "http://www.dr-lex.be/software/download/BlackScreen#{version.dots_to_underscores}.zip"
  name 'Black Screen screensaver'
  homepage 'https://www.dr-lex.be/software/screensavers.html'

  screen_saver 'Black Screen/BlackScreen.saver'
end
