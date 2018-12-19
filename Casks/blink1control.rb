cask 'blink1control' do
  version '2.2.1'
  sha256 '56c4b028babb20f425450b4fd8a76a46716325c5d2a879548aa76fc07b08640c'

  # github.com/todbot/Blink1Control2 was verified as official when first introduced to the cask
  url "https://github.com/todbot/Blink1Control2/releases/download/v#{version}/Blink1Control#{version.major}-#{version}-mac.dmg"
  appcast 'https://github.com/todbot/Blink1Control2/releases.atom'
  name 'Blink1Control'
  homepage 'https://blink1.thingm.com/'

  app "Blink1Control#{version.major}.app"
end
