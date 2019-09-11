cask 'obinslab-starter' do
  version '1.1.1'
  sha256 '2c7547e9b53ae6a43bae14a36098527995888cd9f766295f92174707f32a67d2'

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinskit'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinskit'

  app 'Obinskit.app'
end
