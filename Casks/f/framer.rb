cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2025.43.3"
  sha256 arm:   "912378dc08e28476e5b4b30f1c3ee995949f5c6e7290139996f6b31fb07f5e7b",
         intel: "33792cb4e7c83729438a9e9795ea6a374549e97e7a7bf68b474b36f5f2c6576a"

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer-#{version}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url "https://updates.framer.com/electron/darwin/#{arch}/version-stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Framer.app"

  zap trash: [
    "~/Library/Application Support/Framer",
    "~/Library/Caches/com.framer.electron",
    "~/Library/Caches/com.framer.electron.ShipIt",
    "~/Library/HTTPStorages/com.framer.electron",
    "~/Library/Preferences/ByHost/com.framer.electron.ShipIt.*.plist",
    "~/Library/Preferences/com.framer.electron.plist",
    "~/Library/Saved Application State/com.framer.electron.savedState",
  ]
end
