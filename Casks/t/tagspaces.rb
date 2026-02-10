cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.9.1"
  sha256 arm:   "bc1ccca63f37ef2b2d86c080885169879faef3b76a47167cbd60a8319bd295a2",
         intel: "8204720ad13fb4dcecc49f76ba154b4b487e9f49951598c0504220302cf438e7"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
