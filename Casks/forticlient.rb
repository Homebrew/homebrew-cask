cask "forticlient" do
  version "6.4"
  sha256 "a673cc372f4caf90476e6cda4e51c8450ac58e09a8c5218bba537e86792e5d23"

  # filestore.fortinet.com/forticlient/ was verified as official when first introduced to the cask
  url "https://filestore.fortinet.com/forticlient/downloads/FortiClientVPNOnlineInstaller_#{version}.dmg"
  name "FortiClient"
  homepage "https://forticlient.com/"

  installer manual: "FortiClientUpdate.app"

  uninstall script: {
    executable: "/Applications/FortiClientUninstaller.app/Contents/Resources/uninstall_helper",
    sudo:       true,
  }

  zap trash: [
    "/Library/Application Support/Fortinet",
    "~/Library/Application Support/Fortinet",
    "~/Library/Application Support/FortiClient",
  ]
end
