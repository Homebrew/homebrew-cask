cask "playdate-simulator" do
  version "3.1.0"
  sha256 "f4062382f31b763b21a0aa7167a65ec059a20ab64d3dc3744197baecb84a34d9"

  url "https://download-cdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.zip",
      verified: "download-cdn.panic.com/playdate_sdk/"
  name "Playdate SDK"
  desc "Playdate Lua and C APIs, docs and Simulator for local development"
  homepage "https://play.date/dev/"

  livecheck do
    url "https://download.panic.com/playdate_sdk/PlaydateSDK-latest.zip"
    strategy :header_match
  end

  depends_on :macos

  pkg "PlaydateSDK.pkg"

  uninstall_preflight_steps do
    remove "/usr/local/bin/arm-*", symlink_target_contains: "playdate", sudo: true
  end

  uninstall pkgutil: "date.play.sdk",
            delete:  "/usr/local/playdate",
            trash:   "~/Developer/PlaydateSDK",
            rmdir:   "~/Developer"

  zap trash: "~/.Playdate"

  caveats do
    license "https://play.date/dev/sdk-license"
  end
end
