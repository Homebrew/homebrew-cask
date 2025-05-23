cask "sunloginclient" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "187", intel: "89"

  version "16.0.0.21158"
  sha256 arm:   "1f3a065a9c42602fcd9f9f063fc37e58788ea1857101be894ede69b35135fd1b",
         intel: "add0498df28f284e0803f819969ae6d610700da0ccb272c52312074b39e7e8d9"

  url "https://dl.oray.com/sunlogin/mac/SunloginClient_#{arch}_#{version}.dmg"
  name "Sunlogin Client"
  name "贝锐向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://client-api.oray.com/softwares/#{livecheck_id}/download"
    regex(/SunloginClient[._-]#{arch}[._-]?(\d+(?:\.\d+)+)\.dmg/i)
    strategy :header_match
  end

  depends_on macos: ">= :mojave"
  pkg "SunloginClient.pkg"

  postflight do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    retries ||= 3
    ohai "The SunloginClient package postinstall script launches the app" if retries >= 3
    ohai "Attempting to close SunloginClient to avoid unwanted user intervention" if retries >= 3
    return unless system_command "/usr/bin/pkill", args: ["-f", "/Applications/SunloginClient.app"]
  end

  uninstall launchctl: [
              "com.oray.sunlogin ()",
              "com.oray.sunlogin.agent",
              "com.oray.sunlogin.desktopagent",
              "com.oray.sunlogin.helper",
              "com.oray.sunlogin.service",
              "com.oray.sunlogin.startup",
            ],
            quit:      "com.oray.sunlogin.macclient",
            pkgutil:   "com.oray.sunlogin.macclient"

  zap delete: "/private/var/log/sunlogin/",
      trash:  [
        "~/Library/Caches/com.oray.sunlogin.macclient",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "/private/var/db/receipts/com.oray.sunlogin.macclient.plist",
        "/private/var/db/receipts/com.oray.sunlogin.macclient.bom",
        "~/Sunlogin Files",
        "~/protocol_config.conf",
      ]
end
