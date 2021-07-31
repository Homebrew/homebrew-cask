cask "kitty" do
  version "0.22.1"
  sha256 "395964deaa8dfb60f229d2be79f6f95e56ae3351f91aa660d581c32e5b565a9c"

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
