cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.84.5"
  sha256 arm:   "124f4c5981252b6d3ac31f7942467156c5dec7d5ff490172b17c881edaa1ba5e",
         intel: "2755cdfd9d74f14f05e3c77d2ce4a7b83a71e5dbf9a66367d1ca547e9fa8f74e"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "Nimbalyst.app"

  # Crystal was replaced by Nimbalyst, so its paths are kept for users migrated from `stravu-crystal`
  zap trash: [
    "~/Library/Application Support/@nimbalyst",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.nimbalyst.electron.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stravu.crystal.sfl*",
    "~/Library/Application Support/Crystal",
    "~/Library/Caches/com.stravu.crystal",
    "~/Library/Caches/com.stravu.crystal.ShipIt",
    "~/Library/HTTPStorages/com.stravu.crystal",
    "~/Library/Logs/Crystal",
    "~/Library/Preferences/com.nimbalyst.electron.plist",
    "~/Library/Preferences/com.stravu.crystal.plist",
    "~/Library/Saved Application State/com.stravu.crystal.savedState",
  ]
end
