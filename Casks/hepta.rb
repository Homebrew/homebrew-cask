cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.195.0"
  sha256 arm:   "6e375d1edc5a5389f99cc32a7f9c5c6050a53fe58f1f56b34724147fd115fa7e",
         intel: "a6e484a248de3a32ee94d13e2cafb57b1d394585307f5eb31212715a33fa339a"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Hepta-#{version}-#{arch}.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url "https://github.com/heptameta/project-meta/releases"
    strategy :github_latest
  end

  app "Hepta.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
