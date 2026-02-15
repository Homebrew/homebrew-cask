cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.9"
  sha256 arm:   "ed34fd812b537ee38dbe6ffe2e293dc83ed1f4d6d1b77d047e3586f02fc2f8c0",
         intel: "bf229b9df5fe6268e48598933451795fdbc87b3ab1ae6de4defb68cdcc8823c3"

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
