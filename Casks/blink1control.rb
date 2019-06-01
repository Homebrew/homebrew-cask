cask 'blink1control' do
  version '2.2.2'
  sha256 '59d7235432e018f6d8152c580b0ec38546fef0215342139b4cf95f6161efa097'

  # github.com/todbot/Blink1Control2 was verified as official when first introduced to the cask
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac.dmg"
  appcast 'https://github.com/todbot/Blink1Control2/releases.atom'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'

  app "Blink1Control#{version.major}.app"
end
