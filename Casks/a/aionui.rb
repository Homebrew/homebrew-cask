cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.15"
  sha256 arm:   "38a9893587f33ebe5a0d353653abf86db80af812153434e0df85cc957330a857",
         intel: "d063fb24bf5e48516c97ce9729cb7dc1d8dd02a3eb15f703efc756e7e411342b"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
