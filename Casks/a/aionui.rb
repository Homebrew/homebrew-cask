cask "aionui" do
  arch arm: "arm64", intel: "x64"

  version "2.1.11"
  sha256 arm:   "126dc25ae6a78eb5af0d1818a7dbdf377b32cf4eb10e5ef93a40845fac2f350d",
         intel: "f4bd88e5ba93e560159ff88b2effedaa64b06cea4de57ada88903a2950a2c715"

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
