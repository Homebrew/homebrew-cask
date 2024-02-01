cask "heptabase" do
  arch arm: "-arm64"

  version "1.24.0"
  sha256 arm:   "ce7b56edc1d59542c97e0fe5ebd15c83e369c74459c803547a97a683d786192b",
         intel: "9a8efa42bb26d05f08b1234fda6a93ebafbad242cac1be150d32b99db73a64b1"

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
