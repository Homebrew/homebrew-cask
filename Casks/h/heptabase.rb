cask "heptabase" do
  arch arm: "-arm64"

  version "1.96.0"
  sha256 arm:   "87ab426cb53ebfcd50d09d996d186a27b884f80e02da8dade0fd1ce468b42ea0",
         intel: "e878fa77beca4a04f489b155e5a33bc20dfdbb5312ffdf91b1a3dfb83588a468"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
