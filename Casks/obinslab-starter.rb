cask 'obinslab-starter' do
  version '1.0.5'
  sha256 'edf944898b64595cccc9dfaec98055b7cdac7857be98df01e5ba1672311aeeeb'

  url "http://releases.obins.net/occ/darwin/x64/ObinslabStarter_#{version}.dmg"
  name 'Obinslab Starter'
  homepage 'http://en.obins.net/obinslab-starter'

  app 'Obinslab Starter.app'
end
