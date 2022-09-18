cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.197.0"
  sha256 arm:   "cb3a94ab9f42779c06c2dadcea86fbd58763da5a3550a3246ed0fc57f8c7bd75",
         intel: "8e028ee1cb0f906a344d71c876a8a2963d9f4d6318ba6f194fdbd50998a2e224"

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
