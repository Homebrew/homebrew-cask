cask "hyprmac" do
  version "0.29.0"
  sha256 "7e11cc0d0e71dd44cf37288577a9cccd1f36e3c5d7ba4cb4e3aa45d361ef5021"

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
