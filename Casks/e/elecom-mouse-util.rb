cask "elecom-mouse-util" do
  version "6.1.0"
  sha256 "5b5e5eed4bd2e6888295610559a73b2d410a8cf5ba8689820ce5325d6f2f9f30"

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
