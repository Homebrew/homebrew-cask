cask "tight-studio" do
  version "3.0.5"
  sha256 "d711591a5a4891d2b12ef4369f0585e5d9e3adaab1303f44b615500b016b1f70"

  url "https://downloads.tight.studio/TightStudio-#{version}-arm64.dmg"
  name "Tight Studio"
  desc "Screen recorder and video editor"
  homepage "https://tight.studio/"

  livecheck do
    url "https://downloads.tight.studio/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Tight Studio.app"

  uninstall quit: "tight.studio"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/tight.studio.sfl*",
    "~/Library/Application Support/Tight Studio",
    "~/Library/Caches/tight.studio",
    "~/Library/Caches/tight.studio.ShipIt",
    "~/Library/HTTPStorages/tight.studio",
    "~/Library/Logs/Tight Studio",
    "~/Library/Preferences/tight.studio.plist",
  ]
end
