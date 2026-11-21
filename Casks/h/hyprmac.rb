cask "hyprmac" do
  version "0.26.0"
  sha256 "0463cd814941a4c192198e8481b814e1e07b999c8672df2579ab0429c8ce542e"

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
