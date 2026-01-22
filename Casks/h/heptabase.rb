cask "heptabase" do
  arch arm: "-arm64"

  version "1.83.4"
  sha256 arm:   "b15720dc8dc192d1056bf95c8f12e875051c4d212363c756fc8d82f28eb3d613",
         intel: "3b9036037ce075875ba0f2498839ba21b0447849522ebe0926dabca3f007e168"

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
