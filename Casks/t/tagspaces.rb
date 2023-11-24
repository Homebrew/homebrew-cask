cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.6.2"
  sha256 arm:   "15b4e3ac442148fa80119e0500b1141c4f64c7690f5a9ae4adb2378e7683e572",
         intel: "bb7f4ff1febd5954312d549c6b7635b96d9a2a093199ddf1b2a4456623bede81"

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
