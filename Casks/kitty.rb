cask 'kitty' do
  version '0.14.5'
  sha256 'c166944a9cbda2b3a7590c0b2f90eefc30802f2197ef8ca64b7bced36be809a9'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  depends_on macos: '>= :sierra'

  app 'kitty.app'
  binary "#{appdir}/kitty.app/Contents/MacOS/kitty"

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
