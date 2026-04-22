cask "heptabase" do
  arch arm: "-arm64"

  version "1.91.0"
  sha256 arm:   "3e806bf0b230df483ff5d9c001dab84e7c780b42ab1f845705582ad44f2c779c",
         intel: "13bae6e537be7532b229a23ed2d64841417d876e0150245fcc005a4ce5617442"

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
