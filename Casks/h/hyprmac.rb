cask "hyprmac" do
  version "0.27.0"
  sha256 "418ab61fd7a001586ae662d246d962c7eab91952e5bd7d9227eccb4d36a42931"

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
