cask "heptabase" do
  arch arm: "-arm64"

  version "1.63.0"
  sha256 arm:   "d2371f90baf2829e63480d590a1eecc6ea955b0530c7801d35456615b61b213a",
         intel: "ad1d29221d54d4b30cb9673b392cb605c4e21402df2765b5a7154fe4385b4f8f"

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
