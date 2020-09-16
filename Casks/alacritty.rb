cask "alacritty" do
  version "0.5.0"
  sha256 "90036d82e5a905772bb1e2b79e8e11368956d5832fd8026ce2ba16101e8ec6fb"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  appcast "https://github.com/alacritty/alacritty/releases.atom"
  name "Alacritty"
  desc "Cross-platform, GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"

  zap delete: [
    "~/Library/Saved Application State/io.alacritty.savedState",
  ]
end
