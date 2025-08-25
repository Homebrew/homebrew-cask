cask "heptabase" do
  arch arm: "-arm64"

  version "1.71.0"
  sha256 arm:   "01eb77b2f8c649bc82c8bdbe32a0f5559f9b0fada56a27368ffa974fdefcc7a9",
         intel: "8ccb75b478cb6a3702a9010482e3b0a43e242e8fc8cf62cfa186e3073117a2b3"

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
