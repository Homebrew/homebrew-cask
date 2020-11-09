cask "kitty" do
  version "0.19.1"
  sha256 "4c9e0724e2e04d2369d408e587621ac5a8ae82cf177878c1b1a2ce1400cfb2bb"

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
