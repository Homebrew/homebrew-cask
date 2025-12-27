cask "portalbox" do
  version "0.1.4"
  sha256 "14e907b80ea7259a20c749fe10f0be9e52a3dcd3f0e2e2e6a2e295e0ff2bec1d"

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
