cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.13.3"
  sha256 arm:   "afad9de23092915d3d6c39f0689cef28d93ab58cb089112891ac9278f6bb8e92",
         intel: "d4d9915ac78a56c48682e165f648ba339c6855a609afa4515d85ed3b17cd07bc"

  url "https://github.com/tagspaces/tagspaces/releases/download/v#{version}/tagspaces-mac-#{arch}-#{version}.dmg",
      verified: "github.com/tagspaces/tagspaces/"
  name "TagSpaces"
  desc "Offline, open-source, document manager with tagging support"
  homepage "https://www.tagspaces.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "TagSpaces.app"

  zap trash: [
    "~/Library/Application Support/TagSpaces",
    "~/Library/Preferences/org.tagspaces.desktopapp.plist",
    "~/Library/Saved Application State/org.tagspaces.desktopapp.savedState",
  ]
end
