cask "heptabase" do
  arch arm: "-arm64"

  version "1.89.3"
  sha256 arm:   "7e3ebd930c3b045f229cca9d169baf2a05a7bbb753b010be910533f060c44089",
         intel: "d2923c4b55f4f60250607c5441616077935224c95b39a4be020fc7093ce5fe47"

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
