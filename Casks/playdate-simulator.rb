cask "playdate-simulator" do
  version "1.9.0"
  sha256 "c61e3ba45b65034f89690e5ad22b2ebd24e03df6d376b72e0fae62b003d104ff"

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
