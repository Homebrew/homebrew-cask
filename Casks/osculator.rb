cask :v1 => 'osculator' do
  version '2.13.2-12-gbab8aab'
  sha256 'adfa94655876daebee61ddcf2bfe3781c1591d52bcc026044d4a51c5ee979ea4'

  url "http://dl.osculator.net/releases/osculator-#{version}.dmg"
  name 'OSCulator'
  appcast 'http://www.osculator.net/app/profileInfo.php',
          :sha256 => '6a7b1bf7159f8bc547febab28a24f4800b3bc61ca9d4f9477282dbb172d63fdc'
  homepage 'http://www.osculator.net'
  license :commercial

  app 'OSCulator ƒ/OSCulator.app'
end
