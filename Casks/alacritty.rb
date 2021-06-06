cask "alacritty" do
  version "0.8.0"
  sha256 "fcd26e1c29e0032812797529f7c572d41a54ae02ce242723f75701d1ebbd1b9f"

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

  zap trash: [
    "~/Library/Saved Application State/io.alacritty.savedState",
    "~/Library/Preferences/io.alacritty.plist",
  ]
end
