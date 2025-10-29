cask "heptabase" do
  arch arm: "-arm64"

  version "1.77.0"
  sha256 arm:   "27ce5c4dd7e5322d14d23e7d72d00cd468c443bbb486a24cde4bc23cad0aeb26",
         intel: "58ad4a542d695c069e754325ac066f9526b98f53d689bac55faece40f22224f8"

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
