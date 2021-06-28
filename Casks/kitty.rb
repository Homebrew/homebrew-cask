cask "kitty" do
  version "0.21.2"
  sha256 "d50e1592b5a02290610239313fccb950f6f60660ef180cd53b835eea5e052375"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  name "kitty"
  desc "GPU-based terminal emulator"
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
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
