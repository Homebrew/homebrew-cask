cask "repobar" do
  version "0.10.2"
  sha256 "4f87fa65190bc6b547c5e54ea49cc9e032fc8b24e6a76f0179961c7fafdab4fd"

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
