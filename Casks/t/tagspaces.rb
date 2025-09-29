cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.6.3"
  sha256 arm:   "211d4b3bc55dfdb8e29797406c3bda0f7a31aa6619ee12d84467963d89004360",
         intel: "99eb240c328d7b18671f3a6d794be5084d5e5e9c5af6a951e106e171741607d3"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
