cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.7.4"
  sha256 arm:   "44f4afafdd61ea0e17e56a9ce425661600fb59cea3aa4aadbb680e1c3985e152",
         intel: "a2744ceba9a9f8d545fd3ca1c7c0efedc365138a400b8fb1ec7fa4e050a7ff3a"

  url "https://github.com/iOfficeAI/AionUi/releases/download/v#{version}/AionUi-#{version}-mac-#{arch}.dmg"
  name "AionUi"
  desc "Unified GUI for command-line AI agents"
  homepage "https://github.com/iOfficeAI/AionUi"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "AionUi.app"

  zap trash: [
    "~/.aionui",
    "~/Library/Application Support/AionUi",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aionui.app.sfl*",
    "~/Library/Preferences/com.aionui.app.plist",
    "~/Library/Saved Application State/com.aionui.app.savedState",
  ]
end
