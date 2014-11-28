cask :v1 => 'continuity-keypad' do
  version '0.5.5'
  sha256 '284831c4cda8b68decfc8c7f2f276c211a7dbb310ef5e9aa71fc52ffdf12e445'

  url "http://download.continuitykeypad.co/Continuity%20Keypad%20#{version}.zip"
  homepage 'http://continuitykeypad.co/'
  license :unknown

  app 'Continuity Keypad.app'
end
