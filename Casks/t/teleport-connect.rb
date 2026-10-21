cask "teleport-connect" do
  version "18.11.7"
  sha256 "ac8a4f1f5ac034781409552fbe17c2c35dd71822f24a661bb3dec2b690bad083"

  url "https://cdn.teleport.dev/Teleport%20Connect-#{version}.dmg"
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
