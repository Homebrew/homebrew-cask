cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.315.1"
  sha256 arm:   "fc5c463badeda82fbb29121f32d2d13b2e392a686dc59e296abbc22ae87cae1a",
         intel: "fa721e25b1527be63f54e25908db4b2b929e837a819776f1b8d95b58ed4149d8"

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
