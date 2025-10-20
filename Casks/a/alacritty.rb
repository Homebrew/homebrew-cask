cask "alacritty" do
  version "0.16.0"
  sha256 "6808becde30befb447701715b1169e93f681d3c96980d9eb92413da2deb126a0"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "~/.terminfo")}/61/alacritty-direct"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.5.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-bindings.5.gz"
  bash_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash"
  fish_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish"
  zsh_completion "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty"

  zap trash: [
    "~/Library/Preferences/org.alacritty.plist",
    "~/Library/Saved Application State/org.alacritty.savedState",
  ]
end
