cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.5.2"
  sha256 arm:   "3b0663f1b45584fc8bd476b46036dbe97358460518d3adf2509b3f18d42d0bdd",
         intel: "61bdf57ede85c97dd8ad7f1ed43bad1c3b3c8e4496bfa82b7d49fcf69f32248d"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
