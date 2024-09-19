cask "teleport-connect" do
  version "16.4.0"
  sha256 "8b7da7351500e42e2e730db9e551c7407a6accd986280e2c6bfb1ec7a1fa0a68"

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
end
