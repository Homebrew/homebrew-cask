cask "playdate-simulator" do
  version "1.12.3"
  sha256 "97ff5005093b4b05af7f5a053d1d260de7821f5576105d749cc317f212c7b5af"

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

  pkg "PlaydateSDK-#{version}.pkg"

  uninstall pkgutil: "date.play.sdk"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
