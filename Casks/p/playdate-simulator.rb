cask "playdate-simulator" do
  version "3.1.1"
  sha256 "06b12c2b041b45c552b584b93d03e0fd1991a6772dac01833e48bff7affdcd6f"

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
