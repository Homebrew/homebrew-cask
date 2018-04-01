cask 'mudlet' do
  version '3.7.1'
  sha256 'b79a362d99e5b015ed239201cdb60a0803c4610c839456ff63aad481f64b397d'

  url "https://www.mudlet.org/download/Mudlet-#{version}.dmg"
  appcast 'https://github.com/Mudlet/Mudlet/releases.atom',
          checkpoint: '9bf3128d71ee33fc2eece4c1bf445c45ae2c5b3579d718983a6cbbdca1d9e138'
  name 'Mudlet'
  homepage 'https://www.mudlet.org/'

  app 'Mudlet.app'
end
