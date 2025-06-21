cask "kitty" do
  version "0.42.1"
  sha256 "2eaa135ab832108e30f81f0a72ac34fa42f949556f45ed7bd0fa9d7c0467a79d"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  name "kitty"
  desc "GPU-based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  conflicts_with cask: "kitty@nightly"
  depends_on macos: ">= :big_sur"

  app "kitty.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  kitty_shimscript = "#{staged_path}/kitty.wrapper.sh"
  binary kitty_shimscript, target: "kitty"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  kitten_shimscript = "#{staged_path}/kitten.wrapper.sh"
  binary kitten_shimscript, target: "kitten"

  preflight do
    File.write kitty_shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
    EOS
    File.write kitten_shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitten' "$@"
    EOS
  end

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
