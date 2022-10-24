cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.212.0"
  sha256 arm:   "3ad02f3c24c488782284f7e24e883396cc72984b26242ba15a1727db91056e78",
         intel: "9ef988e71e40f4668eef67140aabe6c33c13ccadfd053600294d0ad7064bfa3c"

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
