cask "playdate-simulator" do
  version "1.9.1"
  sha256 "efb490b187bc012576a10d53f43dc62917ee7f03a302e680bbd9a9696ff4226a"

  url "https://download-keycdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.pkg",
      verified: "download-keycdn.panic.com/playdate_sdk/"
  name "Playdate SDK"
  desc "Playdate Lua and C APIs, docs and Simulator for local development"
  homepage "https://play.date/dev/"

  livecheck do
    url :homepage
    regex(/Playdate\sSDK\s(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :catalina"

  pkg "PlaydateSDK-#{version}.pkg"

  uninstall pkgutil: "date.play.sdk"
end
