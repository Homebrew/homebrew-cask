cask "pingid" do
  version "1.7.3"
  sha256 :no_check

  url "https://pingone-downloads.s3.amazonaws.com/pingid/mac-client/PingID.pkg",
      verified: "pingone-downloads.s3.amazonaws.com/pingid/mac-client/"
  name "PingID"
  desc "Cloud-based, multi-factor authentication"
  homepage "https://www.pingidentity.com/"

  livecheck do
    url "https://prod-ping-sfc.zoominsoftware.io/api/bundle/pingid/toc?language=enus"
    regex(/"title"\s*:\s*"Desktop\s+app\s+v?(\d+(?:\.\d+)+)/i)
  end

  pkg "PingID.pkg"

  uninstall pkgutil: "com.pingidentity.pingid.pcclient"
end
