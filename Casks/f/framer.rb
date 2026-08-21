cask "framer" do
  arch arm: "arm64", intel: "x64"

  version "2026.33.2"
  sha256 arm:   "3f232a3c7e3d5d09530c20c4198badd8932945077958003f39633db70fa66c3e",
         intel: "f9b3e3cf1ca9969766db6093987e077a3c6a5dc345a8138f33dddc60d086111e"

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
