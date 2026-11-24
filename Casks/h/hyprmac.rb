cask "hyprmac" do
  version "0.28.0"
  sha256 "ab9e4489456097845c48dd606b9ed98584a60b21719ad575f1d01426cce49300"

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
