cask "heptabase" do
  arch arm: "-arm64"

  version "1.81.1"
  sha256 arm:   "843962107e4e6bab4393cbf7e7ac4b410353aee3991c2d34a4c10fecf5064a03",
         intel: "f7579a2ea23f9cfa0efe4e3b22ec2ed89fb518a76914107dd0b59a722e8c5a2c"

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
