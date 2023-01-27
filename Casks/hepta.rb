cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.258.0"
  sha256 arm:   "beb8ac548a57cbcd7fa89aaadb66fcbeb16fd2d58988deec2c6b2cc486905977",
         intel: "18ce7b858d3f07ddc2f16946e437fc98aa21743c6626802de1ef5f128a959405"

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
