cask "alacritty" do
  version "0.7.1"
  sha256 "40c9390b9067c25ff2882b41e8526df43466a3a48210b0f3188a9b87789f2541"

  url "https://github.com/alacritty/alacritty/releases/download/v#{version}/Alacritty-v#{version}.dmg"
  appcast "https://github.com/alacritty/alacritty/releases.atom"
  name "Alacritty"
  desc "GPU-accelerated terminal emulator"
  homepage "https://github.com/alacritty/alacritty/"

  app "Alacritty.app"
  binary "#{appdir}/Alacritty.app/Contents/MacOS/alacritty"

  zap delete: [
    "~/Library/Saved Application State/io.alacritty.savedState",
  ]
end
