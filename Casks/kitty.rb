cask 'kitty' do
  version '0.15.0'
  sha256 'e36e0e92dec48215d2ffdb1e467c69fea98018534d2acc718a9fbfb3dbe5d2e0'

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
