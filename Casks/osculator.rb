cask :v1 => 'osculator' do
  version '2.13.1'
  sha256 '3565e9044b541149630235326a441369012ac6d98c54231c23975a53dc69dca5'

  url "http://dl.osculator.net/releases/osculator-#{version}-20-g81f7dd4.dmg"
  name 'OSCulator'
  homepage 'http://www.osculator.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OSCulator ƒ/OSCulator.app'
end
