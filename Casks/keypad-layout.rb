cask 'keypad-layout' do
  version '1.3'
  sha256 '0999d545298233fb2c175ddce8777b13bcb82eef626203e3130481566509951e'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: 'ff85da6ee18dde5cd668d99db3e80765ec2fb158202325bbe4f62f5e505a9004'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
