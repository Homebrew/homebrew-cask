cask "seafile-client" do
  version "9.0.15"
  sha256 "d899e827e68d77503ea204884276a8accfe565d7b012e31983ced6f449647eb6"

  url "https://s3.eu-central-1.amazonaws.com/download.seadrive.org/seafile-client-#{version}.dmg",
      verified: "s3.eu-central-1.amazonaws.com/download.seadrive.org/"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Seafile Client.app"

  zap trash: [
    "~/Library/Application Scripts/com.seafile.seafile-client.findersync",
    "~/Library/Containers/com.seafile.seafile-client.findersync",
    "~/Library/Group Containers/com.seafile.seafile-client.findersync",
    "~/Library/Preferences/com.seafile.seafile-client.plist",
    "~/Library/Saved Application State/com.seafile.seafile-client.savedState",
  ]
end
