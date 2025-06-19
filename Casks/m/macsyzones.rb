cask "macsyzones" do
  version "1.7.0"
  sha256 :no_check

  url "https://macsyzones.com/download/MacsyZones.zip"
  name "MacsyZones"
  desc "Window tiling tool for macOS, similar to FancyZones on Windows"
  homepage "https://macsyzones.com/"

  app "MacsyZones.app"

  depends_on macos: ">= :big_sur"

  auto_updates true

  zap trash: [
    "~/Library/Application Support/MacsyZones",
    "~/Library/Preferences/com.macsyzones.MacsyZones.plist",
    "~/Library/Logs/MacsyZones",
  ]
end
