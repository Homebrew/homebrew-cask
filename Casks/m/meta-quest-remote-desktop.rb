cask "meta-quest-remote-desktop" do
  version "94.0.0.1.110"
  sha256 "9f02ff1278b3f8a279d43e8480fd8f35b9add8a10068086266a95994a21f9690"

  url "https://securecdn.oculus.com/binaries/download/?id=27307607982234713&access_token=OC%7C1196467420370658%7C",
      verified: "securecdn.oculus.com/"
  name "Meta Quest Remote Desktop"
  desc "Remote desktop companion app for Meta Quest headsets"
  homepage "https://horizon.meta.com/desktop/"

  depends_on macos: :ventura

  pkg "Meta Quest Remote Desktop.pkg"

  uninstall quit:    "com.meta.virtualdesktop",
            pkgutil: "com.meta.virtualdesktop"

  zap trash: [
    "~/Library/Application Support/Meta Quest Remote Desktop",
    "~/Library/Application Support/Oculus Remote Desktop",
    "~/Library/Caches/com.meta.virtualdesktop",
    "~/Library/Caches/com.oculus.xr2dsd",
    "~/Library/HTTPStorages/com.meta.virtualdesktop",
    "~/Library/Preferences/com.meta.virtualdesktop.plist",
    "~/Library/Preferences/com.oculus.remotedesktop.plist",
    "~/Library/Preferences/com.oculus.xr2ds.remotedesktop.plist",
    "~/Library/Preferences/com.oculus.xr2dsd.plist",
    "~/Library/Preferences/com.oculus.xr2dsd.telemetry",
    "~/Library/Saved Application State/com.meta.virtualdesktop.savedState",
  ]
end
