cask 'colour-contrast-analyser' do
  version '2.3'
  sha256 '1f7e71e75df0f7893b6bbcc1d22655f9d084586d4f5d71111e222bdc030df67e'

  # github.com/ThePacielloGroup/CCA-OSX was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCA-OSX/releases/download/#{version}/Colour.Contrast.Analyser.app.zip"
  appcast 'https://github.com/ThePacielloGroup/CCA-OSX/releases.atom',
          checkpoint: 'b61166779a9aa65f2b42468fb272235940f5ecf2eb75ab113bc9231033a2923c'
  name 'Colour Contrast Analyser'
  homepage 'https://www.paciellogroup.com/resources/contrastanalyser/'

  app 'Colour Contrast Analyser.app'
end
