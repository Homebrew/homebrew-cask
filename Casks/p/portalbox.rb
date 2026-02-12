cask "portalbox" do
  version "0.2.5"
  sha256 "6c99612afd1945b52e80ac49540929364101b1fe303700e9a0d5b6a62f2d3640"

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
