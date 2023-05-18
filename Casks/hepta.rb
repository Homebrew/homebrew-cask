cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.306.0"
  sha256 arm:   "1ee7be2ec51eca7561d8245d84b52c5f067a7ff40f0534648b7a86e8418e4772",
         intel: "4521eed682b7da5ae84004488ec7c742892675d9b21f4768523d9a8cf4a12cc0"

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
