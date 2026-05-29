cask "heptabase" do
  arch arm: "-arm64"

  version "1.97.0"
  sha256 arm:   "cdbf792296638ab8d0ae420c4ec3f5f9c70a7e4dd1395bdece611e68fd332d2e",
         intel: "93496b7458452ce94272d99fd0d418a29278b43e2198dfed412aad4219c385eb"

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
