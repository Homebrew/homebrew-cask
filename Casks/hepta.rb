cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.301.0"
  sha256 arm:   "f0c3d2dff451ae670cfb051ba95332ad3c45ec359cec05b29d69f67451ffaac6",
         intel: "cd31f90e3d66b5d58fb0bd7498e1d93530c30ed5a9aea1c525a441b68af6b16a"

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
