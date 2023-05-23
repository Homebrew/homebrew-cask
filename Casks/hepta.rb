cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.310.2"
  sha256 arm:   "9edef3d8559591897d8f69bb2cd81603b715b9cf4729c80dc12dfbd9e4678ba8",
         intel: "a93fae2dbd4397d17fb30e10ce5c1418705e6838beb814961990022770298254"

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
