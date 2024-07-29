cask "heptabase" do
  arch arm: "-arm64"

  version "1.35.1"
  sha256 arm:   "8ff3d39fe89a30ecdb1ede8c9cf5b8540c0991355e398e6765fba547e99827cb",
         intel: "c5f2dfaa766770f632cd6ffcbb4da01d6df9f9d004290d29903056b843d0ca3d"

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
