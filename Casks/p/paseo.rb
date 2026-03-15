cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.27"
  sha256 arm:   "eee051b6e80534eb4caf6ab49f0e62a11a27f0ca89f5ed939c6e6bae479e8d5d",
         intel: "70f5e61825db066c5718fb687493ab9531defbbe9785492df2c47ed4e7e74407"

  url "https://github.com/getpaseo/paseo/releases/download/v#{version}/Paseo_#{version}_#{arch}.dmg",
      verified: "github.com/getpaseo/paseo/"
  name "Paseo"
  desc "Self-hosted daemon for AI coding agents"
  homepage "https://paseo.sh/"

  depends_on macos: ">= :ventura"

  app "Paseo.app"
  binary "#{appdir}/Paseo.app/Contents/MacOS/Paseo", target: "paseo"

  zap trash: [
    "~/Library/Application Support/dev.paseo.desktop",
    "~/Library/Caches/dev.paseo.desktop",
    "~/Library/Logs/dev.paseo.desktop",
    "~/Library/Preferences/dev.paseo.desktop.plist",
    "~/Library/Saved Application State/dev.paseo.desktop.savedState",
    "~/Library/WebKit/dev.paseo.desktop",
  ]
end
