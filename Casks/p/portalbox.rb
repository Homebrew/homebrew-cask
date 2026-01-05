cask "portalbox" do
  version "0.2.4"
  sha256 "a858cec80ce5a8d7b68f2a49e53bb0a6a90e61dbf7ac160e25c51e87a8560506"

  url "https://releases.portalbox.friendlyventures.org/#{version}/portalbox-macos-universal.zip",
      verified: "releases.portalbox.friendlyventures.org/"
  name "PortalBox"
  desc "Share a region of your screen in video calls"
  homepage "https://portalboxapp.com/"

  livecheck do
    url "https://releases.portalbox.friendlyventures.org/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "PortalBox.app"

  zap trash: [
    "~/Library/Application Support/org.friendlyventures.PortalBox",
    "~/Library/Caches/org.friendlyventures.PortalBox",
    "~/Library/HTTPStorages/org.friendlyventures.PortalBox",
    "~/Library/Preferences/org.friendlyventures.PortalBox.plist",
    "~/Library/Saved Application State/org.friendlyventures.PortalBox.savedState",
    "~/Library/WebKit/org.friendlyventures.PortalBox",
  ]
end
