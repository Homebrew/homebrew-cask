cask 'blink1control' do
  version '2.2.3'
  sha256 '5d43e8eb698a4e9e74e752ca3d885781417b64018e447ec29d06ae015a6a8670'

  # github.com/todbot/Blink1Control2/ was verified as official when first introduced to the cask
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac.dmg"
  appcast 'https://github.com/todbot/Blink1Control2/releases.atom'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'

  app "Blink1Control#{version.major}.app"
end
