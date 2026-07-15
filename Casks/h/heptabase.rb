cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.5"
  sha256 arm:   "81b500de1f33a5ec545f8af43da68811cacb49308d925a79af54c57b028e6930",
         intel: "8f2ed96ccfab89b2d1652794a01e3105bd285193e0aecfe0fb75834d5650ce6e"

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
