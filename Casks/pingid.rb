cask "pingid" do
  version "1.7.1"
  sha256 :no_check

  url "https://pingone-downloads.s3.amazonaws.com/pingid/mac-client/PingID.pkg",
      verified: "pingone-downloads.s3.amazonaws.com/pingid/mac-client/"
  name "PingID"
  homepage "https://www.pingidentity.com/"

  pkg "PingID.pkg"

  uninstall pkgutil: "com.pingidentity.pingid.pcclient"
end
