cask "heptabase" do
  arch arm: "-arm64"

  version "1.25.1"
  sha256 arm:   "cbffde160af5499f3db94e8f36040b539fca5b6a4101027778e14259bae1165e",
         intel: "029290ff5db72e2125de441c2d4dbf0a6c70b1cfe2bedef502a846283c8d65e5"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
