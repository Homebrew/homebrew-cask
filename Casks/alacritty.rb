cask "alacritty" do
  version "0.12.0-rc1"
  sha256 "6aeab1600e44f0408a2d010feeaee91ca154d82ca3e3f5d5fefea1aa073e9a19"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/_alacritty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.bash",
         target: "#{HOMEBREW_PREFIX}/etc/bash_completion.d/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/completions/alacritty.fish",
         target: "#{HOMEBREW_PREFIX}/share/fish/vendor_completions.d/alacritty.fish"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/61/alacritty"
  binary "#{appdir}/Alacritty.app/Contents/Resources/61/alacritty-direct",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/61/alacritty-direct"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty.1.gz"
  manpage "#{appdir}/Alacritty.app/Contents/Resources/alacritty-msg.1.gz"

  zap trash: [
    "~/Library/Preferences/io.alacritty.plist",
    "~/Library/Saved Application State/io.alacritty.savedState",
  ]
end
