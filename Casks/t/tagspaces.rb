cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.5.4"
  sha256 arm:   "94754b7f1d0a03aedc79c0a8ffefbaa164fd591e4e9c73d8bfcf1aaeb17ad136",
         intel: "63567285a3609fbc73e77b81c6c6346a196db47725b6d93cc818b3f299e2fc6b"

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
