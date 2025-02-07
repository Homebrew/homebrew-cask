cask "heptabase" do
  arch arm: "-arm64"

  version "1.52.0"
  sha256 arm:   "25d4867619346c0084c782d6781573b3b1e32e49d74e66245790d9999ec929d3",
         intel: "14f9a2b6521057867cd3ce1744ad5a2684b0ff77c03d00e9f153bf723ec80b9a"

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
