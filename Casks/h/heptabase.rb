cask "heptabase" do
  arch arm: "-arm64"

  version "1.45.0"
  sha256 arm:   "e0ac2b3ac9ed5f3e240b8cf11161c63fd3840214b8df71bccc71788364bcc753",
         intel: "5915bc13d859b45c0021d9f6654e3e6e98b015c812ff8eb81665de652d3c5b1e"

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
