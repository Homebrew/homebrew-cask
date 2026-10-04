cask "local-studio" do
  version "3.0.1"
  sha256 "379a6bfa3fb9a87023637edee81662492c58f1e3d5966bf3d13a11766db1e7a8"

  url "https://github.com/sybil-solutions/local-studio/releases/download/v#{version}/Local-Studio-#{version}-arm64.dmg"
  name "Local Studio"
  desc "Local workstation for running and managing language models"
  homepage "https://localstudio.ai/"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Local Studio.app"

  uninstall quit: "org.local.studio.desktop"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.local.studio.desktop.sfl*",
    "~/Library/Application Support/CrashReporter/Local Studio_*.plist",
    "~/Library/Application Support/Local Studio",
    "~/Library/Caches/org.local.studio.desktop",
    "~/Library/Caches/org.local.studio.desktop.ShipIt",
    "~/Library/HTTPStorages/org.local.studio.desktop",
    "~/Library/Preferences/org.local.studio.desktop.plist",
  ]
end
