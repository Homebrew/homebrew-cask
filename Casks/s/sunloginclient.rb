cask "sunloginclient" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "187", intel: "89"

  version "13.1.0.49006"
  sha256 arm:   "aec91d480624ffa6c865dcaa6aeae24496bc573103ca9de0aafa3578dcd36219",
         intel: "6feac4f09859c56095be56f3cccc79ba9b289211bc063edb53e33c0eeca42c1d"

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
            pkgutil:   "com.oray.sunlogin.macclient",
            quit:      "com.oray.sunlogin.macclient"

  zap delete: "/private/var/log/sunlogin/",
      trash:  [
        "~/Library/Caches/com.oray.sunlogin.macclient",
        "~/Library/Preferences/com.oray.sunlogin.macclient.plist",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "~/Sunlogin Files",
      ]
end
