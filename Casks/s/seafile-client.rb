cask "seafile-client" do
  version "9.0.16"
  sha256 "131668cdb2b7e23936f3ca075c61eba92a39de7076fc09b62ecc0039d382a870"

  url "https://sos-ch-dk-2.exo.io/seafile-downloads/seafile-client-#{version}.dmg",
      verified: "sos-ch-dk-2.exo.io/seafile-downloads/"
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
