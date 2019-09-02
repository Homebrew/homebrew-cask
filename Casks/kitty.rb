cask 'kitty' do
  version '0.14.4'
  sha256 'a441f896ae4f883feafb149c3bee328073deaa60e3f10bfeab3d313a5c8c2ba1'

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
