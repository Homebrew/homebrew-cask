cask "heptabase" do
  arch arm: "-arm64"

  version "1.78.12"
  sha256 arm:   "39c01fb67761dcd2b766c3644ba6b1cedabb43e25db7334d3dcc1d87b2fdf190",
         intel: "1a5be6aa0fa2017f0d42de3835a2881bedf9d3c794dfd233e0211bcce830df2a"

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
  depends_on macos: ">= :big_sur"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
