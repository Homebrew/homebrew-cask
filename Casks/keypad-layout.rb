cask 'keypad-layout' do
  version '1.4'
  sha256 '588be349ee8ad5806f40467f512381b8ea295aac5d9548c895a220b48168de3d'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: '993ed24bc82fea12c8f7fa3f36de0e6c3276b663d8887c41342f6d9c05d61a0e'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
