cask "playdate-simulator" do
  version "2.0.0"
  sha256 "b51997c7910a6896e79f387f88e42ce9d9234d01911f1170bf2a8b13be89c66a"

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

  uninstall pkgutil: "date.play.sdk",
            trash:   "~/Developer/PlaydateSDK",
            rmdir:   "~/Developer"

  zap trash: "~/.Playdate"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
