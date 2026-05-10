cask "repobar" do
  version "0.5.1"
  sha256 "57734812190ccfc09018e68f913acbe59e1f4190fc33c6e4c3817510ad211923"

  url "https://github.com/steipete/RepoBar/releases/download/v#{version}/RepoBar-#{version}.zip",
      verified: "github.com/steipete/RepoBar/"
  name "RepoBar"
  desc "Menu bar dashboard for GitHub repository health"
  homepage "https://repobar.app/"

  depends_on macos: ">= :sequoia"

  app "RepoBar.app"

  zap trash: [
    "~/Library/Application Support/com.steipete.repobar",
    "~/Library/Application Support/RepoBar",
    "~/Library/Caches/com.steipete.repobar",
    "~/Library/Caches/RepoBar",
    "~/Library/HTTPStorages/com.steipete.repobar",
    "~/Library/Preferences/com.steipete.repobar.plist",
    "~/Library/Saved Application State/com.steipete.repobar.savedState",
  ]
end
