cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.193.0"
  sha256 arm:   "c63cfa2f9006b21c4e2b9bf0b868cec7572cd47bef11c3f736484c04ac981b3c",
         intel: "8142f1b982f29a763298d06cc571ca68fae0ca8f47af041b536936c4e669de55"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
