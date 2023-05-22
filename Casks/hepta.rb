cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.310.1"
  sha256 arm:   "6e6f79aeb0619e02851dd57e270f889457e0c0e5ccda0e49cdec41bbc8633e62",
         intel: "4f5931152290b947949bb09349f14bbc69423f112d83a7c5e936978e86cd1607"

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
