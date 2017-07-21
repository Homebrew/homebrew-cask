cask 'keypad-layout' do
  version '1.5'
  sha256 '04cf2fb5c17d03d96cd3275127c7031f2a7d90e1327162deb9093075b76c8616'

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast 'https://github.com/janten/keypad-layout/releases.atom',
          checkpoint: '972af51872da1819ca43d67f6ed1a7435cb09099a848ed6a4a3be72cccf62127'
  name 'Keypad Layout'
  homepage 'https://github.com/janten/keypad-layout'

  app 'Keypad Layout.app'
end
