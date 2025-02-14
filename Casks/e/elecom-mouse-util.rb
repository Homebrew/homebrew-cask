cask "elecom-mouse-util" do
  version "6.0.1"
  sha256 "24bc432459f8184899fddbb1633ee532827139f0c700f978a04eb14c8671ba75"

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

  uninstall launchctl: "jp.com.ELECOM.autorun.MouseAssistant",
            pkgutil:   [
              "jp.co.ELECOM.MA5UninstallScript",
              "jp.co.ELECOM.MouseAssistant",
            ]

  # No zap stanza required

  caveats do
    reboot
  end
end
