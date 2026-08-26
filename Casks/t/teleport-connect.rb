cask "teleport-connect" do
  version "18.11.0"
  sha256 "f376f69c709d799aa8bc59c62d886ca1972fb4031ffb77e90ff2af1f1be730ef"

  url "https://cdn.teleport.dev/Teleport%20Connect-#{version}.dmg",
      verified: "cdn.teleport.dev/"
  name "Teleport Connect"
  desc "Developer-friendly browser for cloud infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/",
        user_agent: :browser
    regex(/href=.*?Teleport%20Connect[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :monterey

  app "Teleport Connect.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gravitational.teleport.connect.sfl*",
    "~/Library/Application Support/Teleport Connect",
    "~/Library/Caches/Teleport Connect",
    "~/Library/Preferences/gravitational.teleport.connect.plist",
    "~/Library/Saved Application State/gravitational.teleport.connect.savedState",
  ]
end
