cask "open-science" do
  arch arm: "arm64", intel: "x64"

  version "0.29.0"
  sha256 arm:   "f51de314933e732ae676ed270fe1b8663cbf5902dfeff082aaa862884d492017",
         intel: "935c223eb4d93488be9ca2dac3dad64de4c4426d13bd6d1c15104dfd4b52a5e0"

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
