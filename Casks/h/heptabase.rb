cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.6"
  sha256 arm:   "87450222ff280b02ea1729fcc1a02e496b81dd96ff270ab4fa05b31bb29df673",
         intel: "71a5af06a4b0678702e0dce4975a9eed6fde9567db63282003244dd0dda9f15d"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
