cask "kitty" do
  version "0.19.0"
  sha256 "bac258f7a9759bd3eced20de2acf27167555dd423b03a1c1ff3ad61fcc87b885"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast "https://github.com/kovidgoyal/kitty/releases.atom"
  name "kitty"
  desc "Cross-platform, fast, feature full, GPU based terminal emulator"
  homepage "https://github.com/kovidgoyal/kitty"

  depends_on macos: ">= :sierra"

  app "kitty.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/kitty.wrapper.sh"
  binary shimscript, target: "kitty"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
    EOS
  end

  zap trash: [
    "~/.config/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
