cask "playdate-simulator" do
  version "1.13.0"
  sha256 "ccb2daf836fef6a8404ca739036274ced05a1ada689c563585e69327d808c4e3"

  url "https://download-keycdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.zip",
      verified: "download-keycdn.panic.com/playdate_sdk/"
  name "Playdate SDK"
  desc "Playdate Lua and C APIs, docs and Simulator for local development"
  homepage "https://play.date/dev/"

  livecheck do
    url "https://download.panic.com/playdate_sdk/PlaydateSDK-latest.zip"
    strategy :header_match
  end

  depends_on macos: ">= :catalina"

  pkg "PlaydateSDK.pkg"

  uninstall pkgutil: "date.play.sdk"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
