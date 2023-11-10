cask "heptabase" do
  arch arm: "-arm64"

  version "1.15.1"
  sha256 arm:   "f5a4a4fcac4751d115b718b118a51a42fe78e3714d2046f620dbd139e4a59ec4",
         intel: "973216f1c7d1c8655bec52a516a14d93b60cbd5203aceb6aa9c1e970e084bf53"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
