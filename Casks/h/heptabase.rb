cask "heptabase" do
  arch arm: "-arm64"

  version "1.67.1"
  sha256 arm:   "44cf28844269bf732503663e1052f040c47e9e54cd5c8e717ae233408c8cdca8",
         intel: "916214c5982e0fb645d53ceb414a54c9929164e3a4c775fc43d3983b68131f9c"

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
