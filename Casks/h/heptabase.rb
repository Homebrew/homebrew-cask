cask "heptabase" do
  arch arm: "-arm64"

  version "1.53.0"
  sha256 arm:   "5253306e0ddfe624a57344e498c7ad80bf147b0a301bbc68386e2f49d9632726",
         intel: "3b0c39627ee9bf25d23cf080b0cf70457693892bb19f40e452212cc14f0b94e5"

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
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
