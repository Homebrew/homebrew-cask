cask 'colour-contrast-analyser' do
  version '2.3'
  sha256 '2e737dde56179725ccbad1306bfa8db2711bbc910d046cdb4c567e6a5ad86bb4'

  # Downloads are hosted on Github account now
  url 'https://github.com/ThePacielloGroup/CCA-OSX/releases/download/{version}/Colour.Contrast.Analyser.app.zip'
  name 'Colour Contrast Analyser'
  homepage 'https://www.paciellogroup.com/resources/contrastanalyser/'
  license :gpl

  app 'Colour Contrast Analyser.app'
end
