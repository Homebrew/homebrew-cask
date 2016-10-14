cask 'angband' do
  version '4.0.5'
  sha256 '5b3e36652f1dff687162126da2a40180079777399d6ef479b4f6e47ce9796e8c'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  name 'Angband'
  homepage 'http://rephial.org'

  app 'Angband.app'
end
