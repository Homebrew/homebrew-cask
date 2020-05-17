cask 'kitty' do
  version '0.17.4'
  sha256 '9be739b3c7c5ae051cd3140d235f7a5a9958059abdfa53607a6b3985a65476f0'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  depends_on macos: '>= :sierra'

  app 'kitty.app'
  # Symlinking the kitty CLI to /usr/local/bin will cause it to use Homebrew's
  # Python instead of the one bundled with the app, causing it to crash.
  # (https://github.com/kovidgoyal/kitty/issues/1950)
  shimscript = "#{staged_path}/kitty.wrapper.sh"
  binary shimscript, target: 'kitty'

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
    EOS
  end

  zap trash: [
               '~/.config/kitty',
               '~/Library/Preferences/kitty',
               '~/Library/Saved Application State/net.kovidgoyal.kitty.savedState',
             ]
end
