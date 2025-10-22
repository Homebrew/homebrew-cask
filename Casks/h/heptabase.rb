cask "heptabase" do
  arch arm: "-arm64"

  version "1.75.9"
  sha256 arm:   "3145868cd0ebceb8a959bc579177df2339ad2b1f763da19215aef77c24579ace",
         intel: "8dace982297b677a2c97b522a825e0d75e6590e72eb3eee6be52c7c18cebf35c"

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
