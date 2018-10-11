cask 'conductor' do
  version '1.4.1'
  sha256 'd0c467071f40a278b09fe3d82fa21745e86cec88246cd016b7a87bfa477a9c49'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'

  app 'Conductor.app'
end
