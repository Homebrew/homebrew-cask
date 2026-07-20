cask "kitty@nightly" do
  version :latest
  sha256 :no_check

  url "https://github.com/kovidgoyal/kitty/releases/download/nightly/kitty-nightly.dmg"
  name "kitty-nightly"
  desc "GPU-based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  conflicts_with cask: "kitty"
  depends_on macos: :monterey

  app "kitty.app"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "kitty.wrapper.sh",
                  target:  "kitty",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
                  EOS
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)

  command_wrapper "kitten.wrapper.sh",
                  target:  "kitten",
                  content: <<~EOS
                    #!/bin/sh
                    exec '#{appdir}/kitty.app/Contents/MacOS/kitten' "$@"
                  EOS

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
