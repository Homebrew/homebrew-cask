cask "nimbalyst" do
  arch arm: "arm64", intel: "x64"

  version "0.82.8"
  sha256 arm:   "98ff65aa588f2f50990a15a8e85c849f109616e4a84321edf9291ad25a50b4fc",
         intel: "1944eb6a2baa6d24a5cd87d47241cea62adc0ed5dc6d91da67aefcf5fed82ca0"

  url "https://github.com/Nimbalyst/nimbalyst/releases/download/v#{version}/Nimbalyst-macOS-#{arch}.dmg"
  name "Nimbalyst"
  desc "Visual workspace for building with Codex and Claude Code"
  homepage "https://nimbalyst.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

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
