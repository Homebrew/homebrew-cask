cask "elecom-mouse-util" do
  version "6.2.1"
  sha256 "1f5ec31fd1ebfa40a032b1a805afd3d589797215fafd50b21fa6bc8d08d5b0ea"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_MA_Setup_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"

  livecheck do
    url :homepage
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
