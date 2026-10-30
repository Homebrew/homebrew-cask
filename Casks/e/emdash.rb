cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "1.2.10"
  sha256 arm:   "7888802cfdf5364bd3ccb2331432cbb948b008da1febdf15b48bd35e35d43aa0",
         intel: "f860c6a8cffe96409210e55c88a827e23e3a9720f73021f95ae00224eca4ce0e"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Emdash.app"

  uninstall quit: "com.emdash.stable"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.sfl*",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.emdash.stable.sfl*",
    "~/Library/Application Support/Emdash",
    "~/Library/Logs/emdash",
    "~/Library/Preferences/com.emdash.plist",
    "~/Library/Preferences/com.emdash.stable.plist",
    "~/Library/Saved Application State/com.emdash.savedState",
  ]
end
