cask "portalbox" do
  version "0.1.0"
  sha256 "219f40596fa71a15d60b9a4b36a4d6ce3b6b68dbc20597e624744b8184d1d332"

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
