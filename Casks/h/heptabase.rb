cask "heptabase" do
  arch arm: "-arm64"

  version "1.84.4"
  sha256 arm:   "ed15146f082a7df8c6500449da1428867cd37932cc1a41478aae9650f0f79fe7",
         intel: "bc6e4a93a31b69d2fe567d8cde854ff6210fe87095ea4d3924a1e6e088881b66"

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
