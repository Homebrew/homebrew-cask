cask "teleport-connect" do
  version "15.2.2"
  sha256 "c2641948b229ca6a3e64bc58c98433560f449b6ef55c702fca38a44f24b6f661"

  url "https://cdn.teleport.dev/Teleport%20Connect-#{version}.dmg",
      verified: "cdn.teleport.dev/"
  name "Teleport Connect"
  desc "Developer-friendly browser for cloud infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/href=.*?Teleport%20Connect[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Teleport Connect.app"

  zap trash: [
    "~/Library/Application Support/Teleport Connect",
    "~/Library/Preferences/gravitational.teleport.connect.plist",
    "~/Library/Saved Application State/gravitational.teleport.connect.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
