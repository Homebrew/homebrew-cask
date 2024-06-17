cask "heptabase" do
  arch arm: "-arm64"

  version "1.32.18"
  sha256 arm:   "5856a42a1ac8982ac9c4a94a4d4c70ed94117e4a8c0a04dfa02225e29c69bec6",
         intel: "30dd567048750c56544b78c927109675e7c65738ae148465a129b7aa854150b2"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
