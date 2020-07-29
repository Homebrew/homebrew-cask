cask 'colour-contrast-analyser' do
  version '3.1.0'
  sha256 '0e47c4be616b95b4ce262e225e4775e5951590f3a0ad98a51dae0d220f2f1fe6'

  # github.com/ThePacielloGroup/CCAe was verified as official when first introduced to the cask
  url "https://github.com/ThePacielloGroup/CCAe/releases/download/v#{version}/CCA-#{version}.dmg"
  appcast 'https://github.com/ThePacielloGroup/CCAe/releases.atom'
  name 'Colour Contrast Analyser (CCA)'
  homepage 'https://developer.paciellogroup.com/resources/contrastanalyser/'

  app 'Colour Contrast Analyser (CCA).app'
end
