cask 'praat' do
  version '6.0.25'
  sha256 '4acf9d111565a6de36c329b7c886a17fc4cd6e43e9d6de6986a750ae50938f4f'

  url "http://www.fon.hum.uva.nl/praat/praat#{version.no_dots}_mac64.dmg"
  appcast 'https://github.com/praat/praat/releases.atom',
          checkpoint: '3c4f1a82af551d8e28d1615308376f019740bb467b86d346b89464a4fbab19f1'
  name 'Praat'
  homepage 'http://www.fon.hum.uva.nl/praat/'

  app 'Praat.app'
  binary "#{appdir}/Praat.app/Contents/MacOS/Praat", target: 'praat'
end
