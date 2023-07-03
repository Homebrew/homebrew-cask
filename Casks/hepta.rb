cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.330.2"
  sha256 arm:   "f25703561a9d8ce091b10419f47657ccfdfd6166dc02f14991411a3e39d27714",
         intel: "a7cc8baa6f6f8c530fcd79bac79f9f7de61be37ab500955633a90284584f8886"

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
