cask "heptabase" do
  arch arm: "-arm64"

  version "1.18.5"
  sha256 arm:   "a63780faa26bed6e4e37dd1b2a00038fa8e168ce862e87b1fa78da17039a1fa2",
         intel: "eb72a461bcd3c57dc75eb13872852f0ca8ca64b5643b8daa4d2e27e18d510afe"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
