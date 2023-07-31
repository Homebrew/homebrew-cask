cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.354.0"
  sha256 arm:   "3529c0b9b351ca9e271eccf28ad4331be34db0ff51a4ccea3aab5db98c935102",
         intel: "3cc28c3066f301439cc8053936e88031c7922dd35b0f0ab3c79cc4ddd99248ca"

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
