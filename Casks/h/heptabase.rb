cask "heptabase" do
  arch arm: "-arm64"

  version "1.55.6"
  sha256 arm:   "dc916fb395ed4803233cd8429af51e80007d6ae9a6fc73922d8c46223343e3c8",
         intel: "8b233d35f8ccf42c633def5333ed18d2ce8b75b665bcb52b931df2ebc44da579"

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
