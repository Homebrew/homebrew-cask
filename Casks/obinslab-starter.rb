cask 'obinslab-starter' do
  version '1.0.11'
  sha256 'f6db6ac1b5de1e1df3fb8095ab1c55e9708e3f6f1587ea69f187404248ce9400'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinslab-starter'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
