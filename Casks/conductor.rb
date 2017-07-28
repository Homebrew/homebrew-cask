cask 'conductor' do
  version '1.4.1'
  sha256 'd0c467071f40a278b09fe3d82fa21745e86cec88246cd016b7a87bfa477a9c49'

  url "https://github.com/keith/conductor/releases/download/#{version}/Conductor.app.zip"
  appcast 'https://github.com/keith/conductor/releases.atom',
          checkpoint: 'a0cb2e172d6824138153f58f0b16cdf642128525861b2f11f979cef6ffad510c'
  name 'Conductor'
  homepage 'https://github.com/keith/conductor'

  accessibility_access true

  app 'Conductor.app'
end
