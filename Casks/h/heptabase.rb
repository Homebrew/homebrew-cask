cask "heptabase" do
  arch arm: "-arm64"

  version "1.62.0"
  sha256 arm:   "65b3c8bb03f6bf0522639eb61eed8e9e48ef7b32b3fe6dac31ad1a9108a686d4",
         intel: "41a1c88f9001a82c611f2f2861f20b969654e40ca1361feaa26b0fc91cb36426"

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
