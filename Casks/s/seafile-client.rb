cask "seafile-client" do
  version "9.0.21"
  sha256 "7af0726a075ea4280383a5191011e840729aef9fbe1554faa6924a4545e7f1b3"

  url "https://sos-ch-dk-2.exo.io/seafile-downloads/seafile-client-#{version}.dmg"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: :big_sur

  app "Seafile Client.app"

  uninstall quit: "com.seafile.seafile-client"

  zap trash: [
    "~/Library/Application Scripts/com.seafile.seafile-client.findersync",
    "~/Library/Containers/com.seafile.seafile-client.findersync",
    "~/Library/Group Containers/com.seafile.seafile-client.findersync",
    "~/Library/Preferences/com.seafile.seafile-client.plist",
    "~/Library/Saved Application State/com.seafile.seafile-client.savedState",
  ]
end
