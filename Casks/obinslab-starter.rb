cask 'obinslab-starter' do
  version '1.0.0'
  sha256 '8a8b982c7bfb4ab133558eabc8b8d6c1df588db86dd23274090eac0e738a1c89'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}.dmg"
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
