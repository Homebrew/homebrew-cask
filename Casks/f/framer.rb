cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2025.37.2"
  sha256 arm:   "74a47a4e5b15035a96c4d80ff6b59300081590e75e0d8d08a46d760fbb6d2081",
         intel: "5b6da06fe3d17374bc7f571c7bf03347a32d55cd151c43708384c3ca5fad33c9"

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer-#{version}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url "https://updates.framer.com/electron/darwin/#{arch}/version-stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
