cask "heptabase" do
  arch arm: "-arm64"

  version "1.80.2"
  sha256 arm:   "3faa8dc25fbd8624cced98ffe547d660b7e3a730b0ae9bb2e21aaffa91c2af33",
         intel: "4411f32a2f83caacc2c9b4a62bb17954744268e9dee70b7d3ad35ae97b3c30c4"

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
