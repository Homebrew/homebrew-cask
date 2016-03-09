cask 'osculator' do
  version '2.13.3-12-g5f24bc9'
  sha256 '30563bcb6f80a9498cf25d38a41c0baba3631f6bcec21a8733cbb267b1e67dfc'

  url "http://dl.osculator.net/releases/osculator-#{version}.dmg"
  name 'OSCulator'
  homepage 'http://www.osculator.net'
  license :commercial

  app 'OSCulator ƒ/OSCulator.app'
end
