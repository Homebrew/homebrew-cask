cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.0"
  sha256 arm:   "15012618372155f74d92ac98db2d55be40b712d19b6fba391db28e582a458b49",
         intel: "ee15f5d4023332f430b1b65d5549b1e8939326e948b3e8ce60e05df51a60fa10"

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
