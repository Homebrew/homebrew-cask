cask "hyprmac" do
  version "0.27.1"
  sha256 "ea067f2fc52696c94d17cb86bcfa3febcaec5053bba67829a9550c5fae53c257"

  url "https://github.com/zacharytgray/HyprMac/releases/download/v#{version}/HyprMac.dmg"
  name "HyprMac"
  desc "Tiling window manager"
  homepage "https://hyprmac.app/"

  livecheck do
    url "https://zacharytgray.github.io/HyprMac/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "HyprMac.app"

  uninstall quit: "com.zachgray.HyprMac"

  zap trash: [
    "~/Library/Application Support/HyprMac",
    "~/Library/Caches/com.zachgray.HyprMac",
    "~/Library/HTTPStorages/com.zachgray.HyprMac",
    "~/Library/Logs/HyprMac",
    "~/Library/Preferences/com.zachgray.HyprMac.plist",
  ]
end
