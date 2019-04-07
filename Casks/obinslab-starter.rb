cask 'obinslab-starter' do
  version '1.0.9'
  sha256 '5156a8d6e319091fe98f7cfbc136d1cffa981640b85ff1592f7e6292d59e4b36'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinslab-starter'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
