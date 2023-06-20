cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.325.1"
  sha256 arm:   "1a70356dca5fca9a2e64f6ae48dac3e38206538611e6e79fc539c100ebfc2a75",
         intel: "86d6daaf10b880682e902880670d1352dea0d637288427fcf0a681fc264b7937"

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
