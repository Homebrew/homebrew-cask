cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "1.9.17"
  sha256 arm:   "1286b98bce23068897e8cc4110f62ea9022d7b6f3ba04cb4b49003b91fa89acb",
         intel: "7a30f83e23f45b96bd0ef99b61ced51c0fb97d8749efdff457bf16d3f0d35a52"

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
