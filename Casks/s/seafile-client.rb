cask "seafile-client" do
  version "9.0.22"
  sha256 "c2c587daab5be250668740f092adc8a3808cce47af5f3f345c88e9e27615d11b"

  url "https://sos-ch-dk-2.exo.io/seafile-downloads/seafile-client-#{version}.dmg"
  name "Seafile Client"
  desc "File syncing client"
  homepage "https://www.seafile.com/"

  livecheck do
    url "https://www.seafile.com/en/download/"
    regex(%r{href=.*?/seafile[._-]client[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

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
