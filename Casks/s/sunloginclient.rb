cask "sunloginclient" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "187", intel: "89"

  version "15.6.2.13600"
  sha256 arm:   "484f998abe98b704508e16a664118271432246e2983194b61b10604511016302",
         intel: "e8414b31c0e16026bdf6ea36175f1dd2dd883d3cdcde0c793a17dd1306a76380"

  url "https://down.oray.com/sunlogin/mac/SunloginClient_#{version}_#{arch}.dmg"
  name "Sunlogin Client"
  name "向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://sunlogin.oray.com/zh_CN/download/download?id=#{livecheck_id}"
    regex(/SunloginClient[._-]?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
    strategy :header_match
  end

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
        "~/Library/Preferences/com.oray.sunlogin.macclient.plist",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "~/Sunlogin Files",
      ]
end
