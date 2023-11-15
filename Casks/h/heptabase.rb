cask "heptabase" do
  arch arm: "-arm64"

  version "1.15.2"
  sha256 arm:   "6e8880caad87370a11aea8e22c0898f3e64ef82c98c5445660db0af91d58ad0a",
         intel: "f11a48ab9f878df6ae283e943f8072f2c145a91c3b7436b88034efdd665f53a4"

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
