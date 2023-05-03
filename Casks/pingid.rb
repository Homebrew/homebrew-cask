cask "pingid" do
  version "1.7.5"
  sha256 :no_check

  url "https://pingone-downloads.s3.amazonaws.com/pingid/mac-client/PingID.pkg",
      verified: "pingone-downloads.s3.amazonaws.com/pingid/mac-client/"
  name "PingID"
  desc "Cloud-based, multi-factor authentication"
  homepage "https://www.pingidentity.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "PingID.pkg"

  uninstall pkgutil: "com.pingidentity.pingid.pcclient"

  zap trash: [
    "~/Library/Logs/PingID",
    "~/Library/Preferences/com.pingidentity.pingid.plist",
    "~/Library/Saved Application State/com.pingidentity.pingid.pcclient.savedState",
  ]
end
