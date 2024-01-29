cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.7.4"
  sha256 arm:   "3b027710b8e54009752ae278d6189767a382042577d30e516acae4e1a8cc5da9",
         intel: "1e58ffeb03971bb36abaf3263d3166a11676232e6fae11273175d4e2787cc61f"

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
