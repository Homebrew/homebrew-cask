cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.2"
  sha256 arm:   "e75c29e191a4012c44aad74d4e7a8f54dbd1ce7f6d5156d2affcbbcbe08943e7",
         intel: "25fb898b6c8e768cdd1f357bca209b9adcdf48b4d500a056462412187a3886b4"

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
