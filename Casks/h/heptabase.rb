cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.5"
  sha256 arm:   "32f5b33b8ff723a5899040b9e13f5d35fdd4bb70cfde718aa6c125837487fd0e",
         intel: "12e4e08faf2a1f8697d9ae3dbda7f9b83a83698bf27c89c0fc4d59447c1411b4"

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
