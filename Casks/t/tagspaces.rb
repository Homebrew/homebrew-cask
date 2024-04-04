cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.7.12"
  sha256 arm:   "ea7667fd51b47d5e24a28dd1e244794409b02bc9864f0c2e60c65d225f68bc55",
         intel: "bbe3ccd026844d49bd17b5d30c47140c82d5d1c9854e76c19e3ccd2c3ffd3ab6"

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
