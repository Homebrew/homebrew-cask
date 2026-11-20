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
  command_wrapper "kitty",
                  executable: "#{appdir}/kitty.app/Contents/MacOS/kitty"
  command_wrapper "kitten",
                  executable: "#{appdir}/kitty.app/Contents/MacOS/kitten"

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
