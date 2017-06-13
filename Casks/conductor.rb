cask 'conductor' do
  version '1.4.1'
  sha256 'd0c467071f40a278b09fe3d82fa21745e86cec88246cd016b7a87bfa477a9c49'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom',
          checkpoint: 'fb271592f0a88f92c680d2645a036b12da17d13d391b0bb6ce3641c4003723eb'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'

  accessibility_access true

  app 'Conductor.app'
end
