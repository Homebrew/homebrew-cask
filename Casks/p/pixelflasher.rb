cask "pixelflasher" do
  version "6.8.1.0"
  sha256 "1d7371399533e2ca673d38240f38b9bc52fe8c28c18a916dd95abbb85c390226"

  url "https://github.com/badabing2005/PixelFlasher/releases/download/v#{version}/PixelFlasher.dmg"
  name "PixelFlasher"
  desc "Pixel phone flashing GUI utility with features"
  homepage "https://github.com/badabing2005/PixelFlasher"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "PixelFlasher.app"

  zap trash: [
    "~/Library/Application Support/PixelFlasher",
    "~/Library/Logs/DiagnosticReports/PixelFlasher*",
    "~/Library/Preferences/com.badabing.PixelFlasher.plist",
    "~/Library/Saved Application State/com.badabing.PixelFlasher.savedState",
  ]
end
