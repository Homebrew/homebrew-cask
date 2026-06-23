cask "heptabase" do
  arch arm: "-arm64"

  version "1.98.3"
  sha256 arm:   "24be94a3ee1ff667b9ef87a56c51ce63cb2e900294b972bd189c03b6c7699ccd",
         intel: "4b644526dd305017fef35f714148595c2d3e8303cd0ada581143b9feb42ff2f4"

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
