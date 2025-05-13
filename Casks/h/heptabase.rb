cask "heptabase" do
  arch arm: "-arm64"

  version "1.56.2"
  sha256 arm:   "c81a2d6b9c32e3d4306b181971f3dd96178e8a1289f2c14e760de1531395709c",
         intel: "d3649344ae088efe0a6c3c0f93ceff23c769d6f3d16784e7e161533516d6200c"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
