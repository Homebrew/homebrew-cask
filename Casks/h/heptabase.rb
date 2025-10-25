cask "heptabase" do
  arch arm: "-arm64"

  version "1.76.1"
  sha256 arm:   "a5976bdf5dcc4c649f648956b7922ff3f3b1c2404b961713e6065f41a61763b2",
         intel: "ff07d8bdc9da9ecf72915728f684b633e4439a45049b65fb1753f16fddfe0087"

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
