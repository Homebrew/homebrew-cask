cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.0.1"
  sha256 arm:   "14897561bc9a65336dc287c6b5c6388964f11d0a04f17aaa05c993cb4fec74b1",
         intel: "aeb6829e4a94b8ac882eae0602c33d1ff5fa2377b8df52d75590a8a7f01dc0e8"

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
