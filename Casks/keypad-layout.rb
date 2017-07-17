cask 'keypad-layout' do
  version '1.4'
  sha256 '588be349ee8ad5806f40467f512381b8ea295aac5d9548c895a220b48168de3d'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: 'd474031346c6ad4e5cf2c50e99bd84326074c8cdfeab6eec058acbc1b97011b8'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
