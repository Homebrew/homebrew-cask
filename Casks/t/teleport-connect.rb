cask "teleport-connect" do
  version "19.0.1"
  sha256 "befcd21eda4670235e8582a561a5f66b5cfc92b10c6c484e31f1bf0e518286ac"

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
