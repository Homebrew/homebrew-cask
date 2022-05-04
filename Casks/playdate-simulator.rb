cask "playdate-simulator" do
  version "1.10.0"
  sha256 "92ae1df03f4b663c892d59db8610bce79b19c3a7f5444a7ca86bec386e04ab15"

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
