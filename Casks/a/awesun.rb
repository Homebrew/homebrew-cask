cask "awesun" do
  arch arm: "arm64", intel: "x86_64"
  livecheck_id = on_arch_conditional arm: "_ARM"

  version "16.6.0.32198"
  sha256 arm:   "77620f879d6b1b325d75afac647cb94dc0b74d6b0f4d1348794e1a27875c7c2b",
         intel: "a51362ff9791e0542dccd75de917e85ce5ac6a77dcf2d89a74aa38797c578f75"

  url "https://d-cdn.oray.com/sl/mac/AweSun_#{version}_#{arch}.dmg"
  name "Sunlogin Client"
  name "向日葵个人版"
  desc "Remote desktop control and monitoring tool"
  homepage "https://sunlogin.oray.com/"

  livecheck do
    url "https://client-webapi.oray.com/softwares/SUNLOGIN_X_MAC#{livecheck_id}?versiontype=stable"
    strategy :json do |json|
      json["versionno"]
    end
  end

  depends_on :macos

  pkg "AweSun.pkg"

  postflight_steps do
    # The postinstall script automatically opens the app. Therefore, we must
    # suppress this behavior to make the cask installation non-interactive.
    terminate_process(
      "/Applications/AweSun.app",
      match:        :full,
      must_succeed: true,
      notices:      [
        "The AweSun package postinstall script launches the app",
        "Attempting to close AweSun to avoid unwanted user intervention",
      ],
    )
  end

  uninstall launchctl: [
              "com.oray.awesun.agent",
              "com.oray.awesun.desktopagent",
              "com.oray.awesun.helper",
              "com.oray.awesun.service",
              "com.oray.awesun.startup",
            ],
            quit:      "com.oray.sunlogin.macclient",
            pkgutil:   [
              "com.oray.awesun.macclient",
              "com.oray.sunlogin.macclient",
              "com.oray.sunlogin.MacVirtualAudioDevice",
            ],
            delete:    "/Applications/AweSun.app"

  zap delete: "/private/var/log/AweSun",
      trash:  [
        "/Library/Application Support/Oray/AweSun",
        "/Library/LaunchDaemons/com.oray.awesun.helper.plist",
        "/Library/LaunchDaemons/com.oray.awesun.plist",
        "~/AweSun",
        "~/Library/Application Support/AweSun",
        "~/Library/Caches/com.oray.sunlogin.macclient",
        "~/Library/Preferences/com.oray.sunlogin.macclient.plist",
        "~/Library/Saved Application State/com.oray.sunlogin.macclient.savedState",
        "~/Library/WebKit/com.oray.sunlogin.macclient",
        "~/protocol_config.conf",
        "~/Sunlogin Files",
      ]
end
