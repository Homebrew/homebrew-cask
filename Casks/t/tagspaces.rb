cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.7.10"
  sha256 arm:   "26c2f42e2ef84460de7637f1fff6af250c81f6dc67db4504336c11d482c7b213",
         intel: "ae076b2e444ffca07928304380a25ae9f80ae8a38f16aa948c268a3211025e7e"

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
