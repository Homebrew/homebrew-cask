cask "heptabase" do
  arch arm: "-arm64"

  version "1.100.1"
  sha256 arm:   "256bcda846db8482ad409ebca9f28224afa043f336bbbf30cd6d23f7669d251b",
         intel: "0978b95ba051b335e4bf73292cdca873f36256a15a013e9e929d87c39cb962ad"

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
