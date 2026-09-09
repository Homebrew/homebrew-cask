cask "open-science" do
  arch arm: "arm64", intel: "x64"

  version "0.27.0"
  sha256 arm:   "2437c5abc1801eaa4d9fcb7a39af712fc3ac2b14c9f36f684a1bc662df8422d5",
         intel: "1bc56c20e98d14999819bd2b26ee3688b3991ad91d47f0694758311f7bdc96e6"

  url "https://github.com/aipoch/open-science/releases/download/v#{version}/aipoch-open-science-#{version}-mac-#{arch}.dmg"
  name "Open Science"
  desc "AI research workbench with scientific agents and notebooks"
  homepage "https://aipoch.com/open-science"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open Science.app"

  uninstall quit: "com.aipoch.open-science"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.aipoch.open-science.sfl*",
    "~/Library/Application Support/Open Science",
    "~/Library/Caches/com.aipoch.open-science",
    "~/Library/Logs/Open Science",
    "~/Library/Preferences/com.aipoch.open-science.plist",
    "~/Library/Saved Application State/com.aipoch.open-science.savedState",
  ]
end
