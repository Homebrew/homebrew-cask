cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2024.34.1"
  sha256 arm:   "0606abb11255baad707df1fcb16628fb0754bc1337566fe4e8fc1705801c9928",
         intel: "838c24c010f1d7ff8788577c389b43fba3dba7903cac1a38a641ff8cfaae9ba4"

  url "https://updates.framer.com/electron/darwin/#{arch}/Framer-#{version}.zip"
  name "Framer"
  desc "Tool that helps teams design every part of the product experience"
  homepage "https://www.framer.com/"

  livecheck do
    url "https://updates.framer.com/electron/darwin/#{arch}/version-stable"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
