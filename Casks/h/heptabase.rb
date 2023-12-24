cask "heptabase" do
  arch arm: "-arm64"

  version "1.18.0"
  sha256 arm:   "aeb66900b1392d58e33487abf63f3d237f0c503df1740745f2fb77065c52ba8e",
         intel: "3e13f4b2dd10f9b72846af038027c87e0cfcca43b56f02c9665d045937781397"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
