cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.1"
  sha256 arm:   "a5bcf44718386fe244439ec7c657fbaf5154d384da2d0f2eb9e110808e7438b3",
         intel: "6f050a2adf8001347b60a707601f84ed2e4bc3dec1f82e487648e17691546dc4"

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
