cask 'kitty' do
  version '0.15.1'
  sha256 'c41d9a2d1aed87d334f33928edcf5973c299a44792da58c62a32eba60472e80f'

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
