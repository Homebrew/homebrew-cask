cask "repobar" do
  version "0.9.0"
  sha256 "2168685f4eddd5c0055be44434ec6b4486b99a6f9bdbc9c025567f5d1e0738b0"

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
