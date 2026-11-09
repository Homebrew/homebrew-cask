cask "playdate-simulator" do
  version "3.1.2"
  sha256 "7828f84b6c5e258f8b6c78648a70052bebffb4d23631a9828601ecdd764f1357"

  url "https://download-cdn.panic.com/playdate_sdk/PlaydateSDK-#{version}.zip"
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
