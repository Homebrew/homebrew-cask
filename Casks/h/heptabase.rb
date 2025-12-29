cask "heptabase" do
  arch arm: "-arm64"

  version "1.82.3"
  sha256 arm:   "3df7ea7a2c9ef0c6de63d2dd37329eb0cfbfcaef678a388bfae313c526adfa6f",
         intel: "885ed4d1f956104da36a753b8b33c548232d62f1c13ccebcf945acadab9bfb9b"

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
