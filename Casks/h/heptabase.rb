cask "heptabase" do
  arch arm: "-arm64"

  version "1.9.0"
  sha256 arm:   "73d16d42af26759d83224697cf3578377bc5687ec9e601a4e354e50966a208e7",
         intel: "8bf45379a040c2083898d658dfbdcb3fd5d432213cc135b8f340481bab47eacc"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
