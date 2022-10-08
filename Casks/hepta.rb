cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.204.0"
  sha256 arm:   "e88cf25a2872578289b643956686d7b7c754384e130f9b3883610914659e5693",
         intel: "8bf31a09169512ea69bad9613bfca4e97ecd78fad6b6dd82397a56ed5785cb6a"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
