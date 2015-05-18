cask :v1 => 'osculator' do
  sha256 'adfa94655876daebee61ddcf2bfe3781c1591d52bcc026044d4a51c5ee979ea4'

  url "http://dl.osculator.net/releases/osculator-2.13.2-12-gbab8aab.dmg"
  name 'OSCulator'
  homepage 'http://www.osculator.net'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OSCulator ƒ/OSCulator.app'
end
