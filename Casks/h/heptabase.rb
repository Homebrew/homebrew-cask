cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.1"
  sha256 arm:   "18c5dd64456f28ab44f3c8bc817cd8e06beb44763fa08402bd0f1e9be9ca08f5",
         intel: "4aa6bbfbe8a4a51ff156f0e39b95df113269160bff3d0b18b795a6f54b52889f"

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
