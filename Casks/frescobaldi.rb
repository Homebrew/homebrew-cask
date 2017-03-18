cask 'frescobaldi' do
  version '2.20.0'
  sha256 '575910ceaeb6016355dcfac77ab5dcfceca42a7ff84db5f3316030231cb86bfc'

  # github.com/wbsoft/frescobaldi was verified as official when first introduced to the cask
  url 'https://github.com/wbsoft/frescobaldi/releases/download/v2.20.0/Frescobaldi-2.20.0-x86_64.dmg'
  name 'Frescobaldi'
  homepage 'http://frescobaldi.org/'

  app 'Frescobaldi.app'

  caveats "If you don't already have LilyPond installed, download it from http://lilypond.org or install it with `brew cask install lilypond`."
end
