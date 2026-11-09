cask "keka@beta" do
  version "1.6.8"
  sha256 "25a4daf0492b7e3bca043c8a7ba1ae97507dd8dbf872811daf74b01f16a12125"

  url "https://github.com/aonez/Keka/releases/download/v#{version}/Keka-#{version}.dmg"
  name "Keka"
  desc "File archiver"
  homepage "https://www.keka.io/#beta"

  livecheck do
    url :url
    regex(/^v?((?:\d+(?:\.\d+)+)([._-](?:beta|dev)(?:\.\w?\d+)?)?)/i)
  end

  auto_updates true
  conflicts_with cask: "keka"
  depends_on :macos

  app "Keka.app"

  zap trash: [
    "~/Library/Application Support/Keka",
    "~/Library/Caches/com.aone.keka",
    "~/Library/Preferences/com.aone.keka.plist",
    "~/Library/Saved Application State/com.aone.keka.savedState",
  ]
end
