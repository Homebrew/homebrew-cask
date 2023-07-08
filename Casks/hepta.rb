cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.338.0"
  sha256 arm:   "bc6aa6c3cba61dc1c38b5cb8e7cbf0a61a19d54e3585d86b5175f50610519297",
         intel: "5f023098a9deea0fd24608e45c2d0ccb21388b62eb25ae3def86538412a38218"

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
