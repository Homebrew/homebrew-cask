cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.327.0"
  sha256 arm:   "cc14d36fd46ba69697764ab34a159a694daa085274bab3d3eb0e9c4ce7bd2383",
         intel: "1cbd9b47e4defce57fbad4eba50579c59a20cf78f33f74852b37a97923be901d"

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
