cask 'blink1control' do
  version '2.2.0'
  sha256 '068559a8a73185343a709b0ea42fa1a6303876a0a6813631652594a327f4f433'

  # github.com/todbot/Blink1Control2 was verified as official when first introduced to the cask
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac.dmg"
  appcast 'https://github.com/todbot/Blink1Control2/releases.atom'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'

  app "Blink1Control#{version.major}.app"
end
