cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.7.3"
  sha256 arm:   "7e5cb206e610c42bc924c023406a6254ff3a1b323ab7aa1ff09880405de6919a",
         intel: "3f09560b7d64ffec52244adc1ea0dc6d0a4a375a259994b4564db964cb20c96f"

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
