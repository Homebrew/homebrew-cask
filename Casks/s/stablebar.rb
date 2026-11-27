cask "stablebar" do
  version "0.19.0"
  sha256 "9c27305fa99a7377dd4a61656714b7893229d6a6c82800fe90b3c19a609b0f7e"

  url "https://github.com/stablebox/StableBar/releases/download/v#{version}/StableBar.dmg"
  name "StableBar"
  desc "Configurable menu bar"
  homepage "https://stablebar.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "StableBar.app"

  uninstall quit: "org.stablebar.app"

  zap trash: [
    "~/Library/Caches/org.stablebar.app",
    "~/Library/Caches/org.stablebar.app.sparkle",
    "~/Library/Caches/StableBar",
    "~/Library/HTTPStorages/org.stablebar.app",
    "~/Library/HTTPStorages/org.stablebar.app.binarycookies",
    "~/Library/Preferences/org.stablebar.app.plist",
  ]
end
