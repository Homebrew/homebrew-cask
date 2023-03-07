cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.272.0"
  sha256 arm:   "f480a5f8df85cc40b92e6ace504b3da7b861c3a8b830a6859ce352a94453f7ef",
         intel: "202b38fa11a12440bf3547c5ec1108ad3e6116c951523e1be85e1b9805753165"

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
