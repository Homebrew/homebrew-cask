cask "heptabase" do
  arch arm: "-arm64"

  version "1.35.2"
  sha256 arm:   "00df0576df748ad30db358ac297c8699b713a035f9b1310ea39ab3d1a4ebc108",
         intel: "4306b4abc63e3da9ac8755d161117fe2362d0f36b50e41ffd4e4f2b9b65fc861"

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

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
