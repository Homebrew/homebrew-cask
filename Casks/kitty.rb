cask 'kitty' do
  version '0.14.6'
  sha256 '24c79ee09050d7fbdfb886fee9de5262a186b7c31a90c6448dd92f9ea1adeea1'

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
