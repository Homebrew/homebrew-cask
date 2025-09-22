cask "heptabase" do
  arch arm: "-arm64"

  version "1.73.6"
  sha256 arm:   "f3c1ad594828961653a37e6e130db850902052a0f6bb8feb37d01325763dfec4",
         intel: "2b54bd25aab099fac9a648162a4d761ebde3d35340167dd7ec2b18e119ca6ffe"

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
