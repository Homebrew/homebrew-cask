cask "repobar" do
  version "0.8.1"
  sha256 "b2904aa9593e3b64b16d89a0fdd9a417110d336bfb8dd73048ca58740093da15"

  url "https://github.com/steipete/RepoBar/releases/download/v#{version}/RepoBar-#{version}.zip",
      verified: "github.com/steipete/RepoBar/"
  name "RepoBar"
  desc "Menu bar dashboard for GitHub repository health"
  homepage "https://repobar.app/"

  depends_on macos: :sequoia

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
