cask "heptabase" do
  arch arm: "-arm64"

  version "1.30.3"
  sha256 arm:   "9c90be50eddf4210e1e00528d29efa1936ef59de42be9e26ac2b7bdba82c07a9",
         intel: "e620ba19fdee1abb51ebe430f98e38df84e754b00bcb69e6c7532d7214bec67a"

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
