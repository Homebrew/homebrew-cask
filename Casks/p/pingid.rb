cask "pingid" do
  version "1.7.5"
  sha256 :no_check

  url "https://downloads.pingidentity.com/pingid/mac-client/PingID.pkg"
  name "PingID"
  desc "Cloud-based, multi-factor authentication"
  homepage "https://www.pingidentity.com/"

  livecheck do
    url "https://docs.pingidentity.com/api/khub/maps/v6hqiVhowIDI52XNglkuRw/pages"
    regex(/Desktop\s+app\s+v?(\d+(?:\.\d+)+)/i)
  end

  pkg "PingID.pkg"

  uninstall pkgutil: "com.pingidentity.pingid.pcclient"

  zap trash: [
    "~/Library/Logs/PingID",
    "~/Library/Preferences/com.pingidentity.pingid.plist",
    "~/Library/Saved Application State/com.pingidentity.pingid.pcclient.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
