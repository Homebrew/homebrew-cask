cask "heptabase" do
  arch arm: "-arm64"

  version "1.85.0"
  sha256 arm:   "ade8512f36a9203b624afa720b5fcaab0ec561d279431882476a28ac4bc87742",
         intel: "38e7723116b70c563fd09170030712d212c5d143624c7a8e5471ec118d59f487"

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
