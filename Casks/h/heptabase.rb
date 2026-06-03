cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.0"
  sha256 arm:   "05413d28bf4233e8f6a50cc7db14a623ecce62516307d60bfdb0cc37e5e65a25",
         intel: "c5d53098113e89ecdbdaa8b188612785c1e201615bd10e6cb7c089d24c16fda0"

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
