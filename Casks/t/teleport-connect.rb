cask "teleport-connect" do
  version "17.4.8"
  sha256 "2708da40a56b81e509d59eadd7e5fdb8dc4833ac20691582d7083658aa04bcea"

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
