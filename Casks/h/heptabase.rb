cask "heptabase" do
  arch arm: "-arm64"

  version "1.96.2"
  sha256 arm:   "6f567378b1971e1e237a6b87c676b7b15b8a66525fd9c63e233cba05c0192b2f",
         intel: "5cfc7980629056cdf36bbe16c90e22262e3f7898f54cdfa1df495c93fc362608"

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
