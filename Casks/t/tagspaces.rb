cask "tagspaces" do
  arch arm: "arm64", intel: "x64"

  version "5.9.2"
  sha256 arm:   "4eccf342a0c310f52de03f55aae7c3d3dba64d655bc832410a33686b03ff7144",
         intel: "729ac08d3cd2d323f2caf920ee95647bd6b627474c3e3a78fd6738e4dfeda094"

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
