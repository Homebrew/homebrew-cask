cask "heptabase" do
  arch arm: "-arm64"

  version "1.60.0"
  sha256 arm:   "7ab4bca6dc462dfbe73384160ddcdefe042f68d86f427b4abb817ec858a77eb8",
         intel: "92b2a60552a4d6f9b22271a2e4a0166b9c3a72c483c39f7092aea57515a08f5a"

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
