cask "heptabase" do
  arch arm: "-arm64"

  version "1.89.0"
  sha256 arm:   "3f86efc532fc64ab854fc964e4e69ebce580e00fa74308e4f61da92086c074d2",
         intel: "de54a0af47b1e0a9d2b6e6353711ad95117dac31d255d947814e01f9d3887ce1"

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
