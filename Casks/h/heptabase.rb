cask "heptabase" do
  arch arm: "-arm64"

  version "1.94.0"
  sha256 arm:   "77a1baf7173e23b9b874db60d0a30a33a170b31e3dfde46281f399a78ee72238",
         intel: "a73fcf6c3784a86681e8128c0bd14ce15ef51b2e07c640d60c4298e3327c05c3"

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
  depends_on macos: :big_sur

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
