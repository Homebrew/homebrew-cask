cask "heptabase" do
  arch arm: "-arm64"

  version "1.35.0"
  sha256 arm:   "50a79a98fb103a2f45bd646a0adb52fbdd8ec09bd125ddfc03ebc6f0bb4e97d6",
         intel: "d4f7418baaa8f75737041b19ba643b68e7384c2bd0cc6b05a24050c278927e01"

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
