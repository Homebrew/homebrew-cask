cask "kitty" do
  version "0.18.2"
  sha256 "22a241643e6ea1b2919751dd05313044070f0beec3f159177a17572c3985194b"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast "https://github.com/kovidgoyal/kitty/releases.atom"
  name "kitty"
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
