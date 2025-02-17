cask "alacritty" do
  version "0.15.1"
  sha256 "abaf240980cf3378031d1bfb3473d3b36abac15d679e2f780d5c0f09aa218459"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Alacritty.app"
  binary "Alacritty.app/Contents/MacOS/alacritty"
  binary "Alacritty.app/Contents/Resources/completions/_alacritty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_alacritty"
  binary "Alacritty.app/Contents/Resources/completions/alacritty.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/alacritty"
  binary "Alacritty.app/Contents/Resources/completions/alacritty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/alacritty.fish"
  binary "Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty"
  binary "Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty-direct"
  manpage "Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty.5.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty-msg.1.gz"
  manpage "Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"

  zap trash: [
    "~/Library/Preferences/org.alacritty.plist",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
