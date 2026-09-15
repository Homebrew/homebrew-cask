cask "open-science" do
  arch arm: "arm64", intel: "x64"

  version "0.30.0"
  sha256 arm:   "ae126f0310e0e1b680bc0c1f9f5b9cb8b1effe0effe8c139f496176818c84494",
         intel: "79579eb0342527510150040ae9b22f7cd7f6a88c6e2a81e5b25e0cfd83cd5c15"

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
