cask "teleport-connect" do
  version "15.2.1"
  sha256 "f614734d8ef7e90861128fc9be73d7c20ca1500575bb14c1ab2cf9b1f87ad413"

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
