cask 'angband' do
  version '4.0.5'
  sha256 '5b3e36652f1dff687162126da2a40180079777399d6ef479b4f6e47ce9796e8c'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'http://rephial.org/release/',
          checkpoint: 'ecb9057a75b47885e9a52f568b25a36e906ed132677cebaa291fef5886aaf6cc'
  name 'Angband'
  homepage 'http://rephial.org/'

  app 'Angband.app'
end
