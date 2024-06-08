cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.8.4"
  sha256 arm:   "1215bcbe5046cfaa9bdb761740e4552256bac452fb04a84c379072fa57fc2940",
         intel: "740b9d6c5ecb9fca81ec16cf40b5382592953baefc7d3363d7c1f89828c3b5e0"

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
