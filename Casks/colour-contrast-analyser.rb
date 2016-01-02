cask 'colour-contrast-analyser' do
  version '1.5.13'
  sha256 '2e737dde56179725ccbad1306bfa8db2711bbc910d046cdb4c567e6a5ad86bb4'

  url "http://files.paciellogroup.com/resources/CCA_#{version}.dmg"
  name 'Colour Contrast Analyser'
  homepage 'https://www.paciellogroup.com/resources/contrastanalyser/'
  license :gpl

  app 'Colour Contrast Analyser.app'
end
