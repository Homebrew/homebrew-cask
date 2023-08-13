cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.363.1"
  sha256 arm:   "cde129b38786bad10026416ffdb3f640a5000a29946be99596201d5c010bd830",
         intel: "6bdd7e12cac1c72fdd24bf4cac63f9d297b1a1d6172e157e64823092962cf71e"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
