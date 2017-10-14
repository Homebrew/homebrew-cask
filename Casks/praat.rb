cask 'praat' do
  version '6.0.32'
  sha256 'f76d5bbc8417a9352aa812cd00a92da89927ceb3c3aafe1b224f1b33959ee6e0'

  # github.com/praat/praat/releases was verified as official when first introduced to the cask
  url "https://github.com/praat/praat/releases/download/v#{version}/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: 'aee47c1fd244741e83beee9d29c987a9ca1cc4c7a53455890ecb4f3930cd91b3'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
