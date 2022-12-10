cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.235.0"
  sha256 arm:   "d51a73002580b12dddb5fcd202bfd425446be7f1e8f4e6c97d34f44e77d21c88",
         intel: "4733060b00463702d4e4b885167b05e821a8948ce0390eac24a490f65f6f8a23"

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
