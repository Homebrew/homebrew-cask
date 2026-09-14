cask "open-science" do
  arch arm: "arm64", intel: "x64"

  version "0.28.0"
  sha256 arm:   "155b7e38e8b6dfac6c06510157f94e4a5bb82db26bd9c9a5aa55cb1fd3f5cce0",
         intel: "29a6b7edfd1a11f02ecd3ac6daf1d9feac3e3a78d9eb8558137b71ba9a150beb"

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
