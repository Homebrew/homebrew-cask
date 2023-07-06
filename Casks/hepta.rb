cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.333.1"
  sha256 arm:   "be850a938861b73408c5a99c5611c02f9d09bfec5ff59be24261f0d52e511728",
         intel: "4404e32b53c818de581d8bc3437dacfcdbf5dd5d5034edf3d982aadb2e2d2953"

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
