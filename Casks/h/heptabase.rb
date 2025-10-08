cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.0"
  sha256 arm:   "0ff1d6eb1ff4811644c9e3e3b2bd4639782cb16b0ddcd9f4b8e04ae7874c90dc",
         intel: "05b22e7c3301a35f29fe8b24232f2cea6f0bc74323ec6e90d271ebf5563133b4"

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
