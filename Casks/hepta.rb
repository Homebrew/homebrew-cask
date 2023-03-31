cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.289.0"
  sha256 arm:   "c184ebc86aedc109ffb44abe4a8dc1f3637814c715992200674140f4e3ac93b6",
         intel: "2370cbc2234fffd47faa2d0532426aed19286d969ce7f7a7bda83e318d6486f3"

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
