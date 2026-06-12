cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.1"
  sha256 arm:   "42a592aa4998b365267d5cbf01648d69d6016ed13990235d01e03a61f425bce9",
         intel: "7ff55859bc42d5552917c15640c6bf1f9259d2dd48085c7998d0e5fe1913cf22"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
