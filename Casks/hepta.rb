cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.292.0"
  sha256 arm:   "22c91d4a27b849ec21a652194c820e950226ffba40c1883e0bbf1f3bcc65cdf4",
         intel: "04871b7fab0b82dc4f11faa0ef4162bcbcd2529300a7da172100e8113cf9b7ea"

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
