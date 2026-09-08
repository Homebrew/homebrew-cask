cask "elecom-mouse-util" do
  version "6.3.2"
  sha256 "701eecca8e662ffcad4044c789d3d8d2df8021282073f93dd7ec988e84283adb"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_MA_Setup_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"

  livecheck do
    url :homepage,
        user_agent: :browser
    regex(/ELECOM[._-]MA[._-]Setup[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: :ventura

  pkg "ELECOM_MA_Setup_#{version}.pkg"

  uninstall launchctl: [
              "application.jp.co.elecom.MouseAssistantUi.*",
              "jp.com.ELECOM.autorun.MouseAssistant",
            ],
            quit:      "jp.co.elecom.MouseAssistant",
            pkgutil:   [
              "jp.co.ELECOM.MA5UninstallScript",
              "jp.co.ELECOM.MouseAssistant",
            ]

  zap trash: [
        "/Library/LaunchAgents/jp.com.ELECOM.autorun.MouseAssistant.plist",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.co.elecom.mouseassistantui.sfl*",
        "~/Library/Application Support/elecom_mouse_assistant_ui",
        "~/Library/Application Support/jp.co.ELECOM/MouseAssistant",
        "~/Library/Caches/jp.co.ELECOM/MouseAssistant",
        "~/Library/Preferences/jp.co.elecom.MouseAssistantUi.plist",
      ],
      rmdir: [
        "~/Library/Application Support/jp.co.ELECOM",
        "~/Library/Caches/jp.co.ELECOM",
      ]

  caveats do
    reboot
  end
end
