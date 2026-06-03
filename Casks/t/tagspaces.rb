cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "6.12.2"
  sha256 arm:   "511c1191bdab7f05cb9131a8db7ad8db42a2fd7f8fb81fa933d44bd5e909fd58",
         intel: "0350ebe06a2bc33d4472e29ecbbf3294eebc83c0933176edce44f0fc5abb193b"

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
