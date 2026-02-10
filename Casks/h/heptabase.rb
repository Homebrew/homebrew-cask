cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.8"
  sha256 arm:   "5b940964790525444f18f424066a428b15ab0ed12c6451d2d1938f888662bac1",
         intel: "5e5fdd7c1321d9a74defc435981136f4f23ecbe95b4de77cf873d91e270496ff"

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
