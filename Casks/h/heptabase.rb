cask "heptabase" do
  arch arm: "-arm64"

  version "1.46.1"
  sha256 arm:   "504aa8df4a4887ea39be1e6479e08658f5da18071f01ad0548403fddeae7e817",
         intel: "47a41012a1518580dc7a4a1338086e855d5f7c31a213a94959fda5966d95a1fd"

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
