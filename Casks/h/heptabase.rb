cask "heptabase" do
  arch arm: "-arm64"

  version "1.31.6"
  sha256 arm:   "3ea4a531aead287fe20fd7e9930b702a9837a537a64be81ab598c2793112613c",
         intel: "9e33492359c735dd2555c2d3a7d14715a9597b278e09e05c464412665c8e1787"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
