cask "heptabase" do
  arch arm: "-arm64"

  version "1.59.0"
  sha256 arm:   "64ef9400881fb040f61157314b816394c1cfddc32aab291f5fca20c1bdd38153",
         intel: "4fc4ffcf5cf3f0140d4613f478e5a64c1413d9cb64db8aa6663b014253869ba4"

  url "https://github.com/heptameta/project-meta/releases/download/v#{version}/Heptabase-#{version}#{arch}-mac.zip",
      verified: "github.com/heptameta/project-meta/"
  name "Hepta"
  desc "Note-taking tool for visual learning"
  homepage "https://heptabase.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Heptabase.app"

  zap trash: [
    "~/Library/Preferences/app.projectmeta.projectmeta.plist",
    "~/Library/Saved Application State/app.projectmeta.projectmeta.savedState",
  ]
end
