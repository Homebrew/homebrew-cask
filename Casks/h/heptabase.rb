cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.7"
  sha256 arm:   "49f8a6ed39b4ff368897ba64458554e41fc7c52f898e84d0f4603822ce720a01",
         intel: "502178b4fd519c5c13aa5c6e827ef6f11b855328e6b45546f2567d7585bd201a"

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
