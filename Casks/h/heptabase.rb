cask "heptabase" do
  arch arm: "-arm64"

  version "1.35.4"
  sha256 arm:   "d1f95725aa6fa153c537b3ee1c923911642dc10ded54702ac3c8fcd590b64bbd",
         intel: "dc7b69cda418813c2c655ba2d964c070d24591d24558a8a2ac37e987404f7ee0"

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
