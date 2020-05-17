cask 'kitty' do
  version '0.17.4'
  sha256 '9be739b3c7c5ae051cd3140d235f7a5a9958059abdfa53607a6b3985a65476f0'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  depends_on macos: '>= :sierra'

  # Symlinking the kitty binary is known to cause problems. It should also be
  # unnecessary because the kitty binary should already be in PATH when using
  # kitty. https://github.com/kovidgoyal/kitty/issues/1950
  app 'kitty.app'

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
