cask "heptabase" do
  arch arm: "-arm64"

  version "1.97.1"
  sha256 arm:   "f23a5094b9a61ea8f175e20dd68f9122da8c17ef25e70b2fd0c4c87dc3978354",
         intel: "61e57683b67c2f04089f38abd75af06bd339b76902144360f7cc31ccd4e56707"

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
