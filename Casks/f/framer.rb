cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2025.9.5"
  sha256 arm:   "70d14e95f4bd4ba0eb5e0dd9ce6dbdf3eef1174fe0895f71ce8f67e3dde8bc3e",
         intel: "44b5273a60f8a8de8b40092ddd61da64f3913bd8dac529791c60cda343809a25"

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer-#{version}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url "https://updates.framer.com/electron/darwin/#{arch}/version-stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
