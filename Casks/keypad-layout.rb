cask 'keypad-layout' do
  version '1.1'
  sha256 '08c38f7f53a4112254b6504b8e91aa422b507f646df7f8281df56b8721cb958c'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: '15065e27d1bc119cd36ca3ad44a5dbcc79a5f6d8c79f48f80a3ab2abacf9ebae'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
