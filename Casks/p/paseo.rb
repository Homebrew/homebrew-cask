cask "paseo" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "1bd8eed3e6cd7d6ec4cfdf2f56b5248dbef6b3a9ed43c260d4b939d1bac24408",
         intel: "6b2c5b44de1a3d8df8c91ebe67e73e4d83fefd0d730394ca8aca93e00af1fb51"

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
