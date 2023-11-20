cask "heptabase" do
  arch arm: "-arm64"

  version "1.16.0"
  sha256 arm:   "c3525f137faf7fc252ab50d61fa1fc19369d300296f189500962214e0e1c22c5",
         intel: "1157fe36c349ab6b58e069a061c4ad9faaa5808aef8b269deb4fd6260f215e1e"

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
