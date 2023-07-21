cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.349.1"
  sha256 arm:   "b19aea5f052a73159000f920eb004dccb3c0893391ee5908aa6c4afc9adaa2bb",
         intel: "c098b133c080016d8fda44d51f12902c3835d01a2471f1d87a2f9950ca6e180c"

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
