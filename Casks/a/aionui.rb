cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.9.25"
  sha256 arm:   "29a0d877dce5bf6415ac7875691ecdd64f1935aef5f378040498c804918b17c9",
         intel: "dc239b3b7990b20006341dbfe00ada0ee202faea856a9023d1528881812dea2b"

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
