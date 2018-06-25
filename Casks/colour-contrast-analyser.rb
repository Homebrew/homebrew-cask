cask 'colour-contrast-analyser' do
  version '2.4'
  sha256 'bf8559d329675e776d4b5be382d789b2c94087d8f5f88386112406e6e59f02c9'

  # github.com/ThePacielloGroup/CCA-OSX was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCA-OSX/releases/download/#{version}/Colour.Contrast.Analyser.app.zip"
  appcast 'https://github.com/ThePacielloGroup/CCA-OSX/releases.atom'
  name 'Colour Contrast Analyser'
  homepage 'https://www.paciellogroup.com/resources/contrastanalyser/'

  app 'Colour Contrast Analyser.app'
end
