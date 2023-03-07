cask "playdate-simulator" do
  version "1.13.1"
  sha256 "54d21b80a6789a3f7d04d7cb91accb14503e4260c2d6c0e65af3396b7d66478e"

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
