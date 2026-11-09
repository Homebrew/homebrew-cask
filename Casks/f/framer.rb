cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2026.45.0"
  sha256 arm:   "f7ce2c7a8748e79c967222f5acc13a5aa752a5a5424bfad881333a0a967c4120",
         intel: "09d771a689d6718bfa037ba817e105b83e9823aab5851ba7dc6dece195df3781"

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer-#{version}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url "https://updates.framer.com/electron/darwin/#{arch}/version-stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Framer.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.framer.electron.sfl*",
    "~/Library/Application Support/Framer",
    "~/Library/Caches/com.framer.electron",
    "~/Library/Caches/com.framer.electron.ShipIt",
    "~/Library/HTTPStorages/com.framer.electron",
    "~/Library/Preferences/ByHost/com.framer.electron.ShipIt.*.plist",
    "~/Library/Preferences/com.framer.electron.plist",
    "~/Library/Saved Application State/com.framer.electron.savedState",
  ]
end
