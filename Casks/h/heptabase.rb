cask "heptabase" do
  arch arm: "-arm64"

  version "1.11.0"
  sha256 arm:   "86287cd9a18f796b8e1967164604d708643244448114b95fac56baf287cbd479",
         intel: "37a6cb26ddf80554cacccef3bd9741e7078a3ff56af5a6b51d9a7225265e54a4"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
