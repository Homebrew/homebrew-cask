cask "heptabase" do
  arch arm: "-arm64"

  version "1.90.8"
  sha256 arm:   "b6c6e1cd5e8164899137ed817fca14cc1e470f3b2466a5b71892089c0dfe9be1",
         intel: "29646b22dfb26efb5996f4a602a0e33010a1650dc749571422da07c7a4037670"

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
