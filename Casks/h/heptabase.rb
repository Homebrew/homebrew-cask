cask "heptabase" do
  arch arm: "-arm64"

  version "1.30.6"
  sha256 arm:   "a4b812611fcbc155bc65d9785e4d8bd1a0de6f46b100df7d8a3046d658b8f1f1",
         intel: "8a2ada5dbeba0477063b9837df15ea765356016b01f253603df35d53b0b98743"

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
