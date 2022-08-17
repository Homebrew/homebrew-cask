cask "hepta" do
  arch arm: "arm64-mac", intel: "mac"

  version "0.186.1"

  on_intel do
    sha256 "367467fc9ba7f7d587307307d0d9084a5bf0610a66e7359b53ad37adfdce7b0b"
  end
  on_arm do
    sha256 "a819c10195985c2770d9d563ca1daf83ec0197e85bb5ab037ed785f19109944d"
  end

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
