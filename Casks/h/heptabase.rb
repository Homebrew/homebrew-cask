cask "heptabase" do
  arch arm: "-arm64"

  version "1.28.1"
  sha256 arm:   "b4676a618f4b6669e8796416cd24dd96a545b5abb2b3a33f4502325c18b72ae1",
         intel: "c570d02653f99dcbba14319380a47fbf096ec419b436319f8357be4ed6db00a1"

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
