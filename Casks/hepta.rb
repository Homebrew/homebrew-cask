cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.196.0"
  sha256 arm:   "950d08a09a7aeba231f28633497895c5706825a4ece6da527179721ab3f76ecd",
         intel: "75d483bbe12df284cd3e62aebbf0281c1f832bd5d204944fe713ade52ebf9cab"

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
