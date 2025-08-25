cask "heptabase" do
  arch arm: "-arm64"

  version "1.71.2"
  sha256 arm:   "982b2f7aff5187a04b69291e29a7912b3f8494cbac1ac366778761f392e1f693",
         intel: "00694ff95f9d82712ab01ee6516c9383c9ee8d3a889a3d72a93f461d78a6b5c9"

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
