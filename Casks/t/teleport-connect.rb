cask "teleport-connect" do
  version "17.2.3"
  sha256 "47e781ff6bec6783ed8b4e56b4949b00ce908e97777499a22595f778af422c77"

  url "https://cdn.teleport.dev/Teleport%20Connect-#{version}.dmg",
      verified: "cdn.teleport.dev/"
  name "Teleport Connect"
  desc "Developer-friendly browser for cloud infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/"
    regex(/href=.*?Teleport%20Connect[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :big_sur"

  app "Teleport Connect.app"

  zap trash: [
    "~/Library/Application Support/Teleport Connect",
    "~/Library/Preferences/gravitational.teleport.connect.plist",
    "~/Library/Saved Application State/gravitational.teleport.connect.savedState",
  ]
end
