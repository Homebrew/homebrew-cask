cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.242.0"
  sha256 arm:   "45cadfdd44b370c634dcf348c16f29efd7aa9147f4baf1930709195f5f11506b",
         intel: "cad4dd2924a137d33454b16a20e1e605597d8548d1905e485d22e5ea33b0f347"

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
