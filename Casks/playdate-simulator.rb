cask "playdate-simulator" do
  version "1.12.2"
  sha256 "42c793eb1e5d5251f3f1b8ac0cd1b1489c5f3e5a763b130c31205496d12389ce"

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
