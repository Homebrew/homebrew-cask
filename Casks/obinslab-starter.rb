cask 'obinslab-starter' do
  version '1.1.0'
  sha256 '9a7916ef37ac10f7d65895ebce96575ac64366bcc834085f108578df0e2a98d8'

  url "http://releases.obins.net/occ/darwin/x64/ObinsKit_#{version}_x64.dmg"
  appcast 'http://en.obins.net/obinskit'
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinskit'

  app 'Obinskit.app'
end
