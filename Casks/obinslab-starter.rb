cask 'obinslab-starter' do
  version '1.0.10'
  sha256 '5aa810df804d18ae4ecdf3a049596164d2af76f518b83476d943f4e186c8b4e2'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinslab-starter'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
