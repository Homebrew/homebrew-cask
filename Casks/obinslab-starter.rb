cask 'obinslab-starter' do
  version '1.1.2'
  sha256 '4e236ddf56348c102331ce3d2b6100db97e04b34acad650af6d7c76ba62f1ce5'

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinskit'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinskit'

  app 'Obinskit.app'
end
