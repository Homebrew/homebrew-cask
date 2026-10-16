cask "repobar" do
  version "0.10.1"
  sha256 "1f3405d02cddc70c0dad71b794c7d4aa3a345c7ea27add7c231caacdf69c3ba5"

  url "https://github.com/steipete/RepoBar/releases/download/v#{version}/RepoBar-#{version}.zip"
  name "RepoBar"
  desc "Menu bar dashboard for GitHub repository health"
  homepage "https://repobar.app/"

  depends_on macos: :sequoia

  app "RepoBar.app"

  zap trash: [
    "~/Library/Application Support/com.steipete.repobar",
    "~/Library/Application Support/RepoBar",
    "~/Library/Caches/com.onevcat.Kingfisher.ImageCache.RepoBarAvatars",
    "~/Library/Caches/com.steipete.repobar",
    "~/Library/Caches/RepoBar",
    "~/Library/HTTPStorages/com.steipete.repobar",
    "~/Library/Preferences/com.steipete.repobar.plist",
    "~/Library/Saved Application State/com.steipete.repobar.savedState",
  ]
end
