cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.3"
  sha256 arm:   "a970250765c73c34c07ffcbbe3aee648f20b581a7a112404e31dc819cd186798",
         intel: "6b582dcbfca95e8aa90fa10c718491562eab80f04e8fc886b4920fc31170d0a7"

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
