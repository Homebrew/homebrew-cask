cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.230.0"
  sha256 arm:   "8c3758ab2ce6a44b47cbd8d7f272c4990afded32d40a0504234fac0313ee291d",
         intel: "327debf9ead721bf9db93dfa63b134a5abfb5e6fbbb7c55f0e2f510c30373847"

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
