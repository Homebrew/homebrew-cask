cask "seafile-client" do
  version "8.0.10"
  sha256 "deec3ba9d125b84074fe62914bbc890be5cc616fe2e0582f5ae6ffcd1e3f5708"

  url "https://download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "seadrive.org/"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "Seafile Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.seafile.seafile-client.findersync",
    "~/Library/Containers/com.seafile.seafile-client.findersync",
    "~/Library/Group Containers/com.seafile.seafile-client.findersync",
    "~/Library/Preferences/com.seafile.seafile-client.plist",
    "~/Library/Saved Application State/com.seafile.seafile-client.savedState",
  ]
end
