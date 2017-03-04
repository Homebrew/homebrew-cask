cask 'colour-contrast-analyser' do
  version '2.3'
  sha256 '1f7e71e75df0f7893b6bbcc1d22655f9d084586d4f5d71111e222bdc030df67e'

  # github.com/ThePacielloGroup/CCA-OSX was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCA-OSX/releases/download/#{version}/Colour.Contrast.Analyser.app.zip"
  appcast 'https://github.com/ThePacielloGroup/CCA-OSX/releases.atom',
          checkpoint: '0ecc055439e78cedf4195b8c810b30bf8a9e59db0fe36e3292d532b0ffeb9c15'
  name 'Colour Contrast Analyser'
  homepage 'https://www.paciellogroup.com/resources/contrastanalyser/'

  app 'Colour Contrast Analyser.app'
end
