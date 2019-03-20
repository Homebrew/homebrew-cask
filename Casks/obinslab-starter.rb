cask 'obinslab-starter' do
  version '1.0.7'
  sha256 '322bbd28bb9dec1c5b60f6fe5c5bbe4a3238b5127ea1e8628bce1364929062a9'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}.dmg"
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
