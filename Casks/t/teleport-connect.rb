cask "teleport-connect" do
  version "19.0.0"
  sha256 "12aa69ae2a468b6643536300734aeb2281a56b36a800f21f4c45ea4adad0a01a"

  url "https://cdn.teleport.dev/Teleport%20Connect-#{version}.dmg"
  name "Teleport Connect"
  desc "Developer-friendly browser for cloud infrastructure"
  homepage "https://goteleport.com/"

  livecheck do
    url "https://goteleport.com/download/",
        user_agent: :browser
    regex(/href=.*?Teleport%20Connect[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :ventura

  app "Teleport Connect.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/gravitational.teleport.connect.sfl*",
    "~/Library/Application Support/Teleport Connect",
    "~/Library/Caches/Teleport Connect",
    "~/Library/Preferences/gravitational.teleport.connect.plist",
    "~/Library/Saved Application State/gravitational.teleport.connect.savedState",
  ]
end
