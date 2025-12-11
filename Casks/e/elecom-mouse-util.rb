cask "elecom-mouse-util" do
  version "6.1.5"
  sha256 "0082853137027bc901088a4e0ca02debeea70d758520ff15944ba888826e12df"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_MA_Setup_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"

  livecheck do
    url :homepage
    regex(/ELECOM[._-]MA[._-]Setup[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :ventura"

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

  # No zap stanza required

  caveats do
    reboot
  end
end
