cask "elecom-mouse-util" do
  version "5.2.13.000"
  sha256 "9896a8efa0cb6de3f8e0ecf1d39f21e14f9c2f7a0798dbf36649bcd9d4944e2e"

  url "https://dl.elecom.co.jp/support/download/peripheral/mouse/assistant/mac/ELECOM_Mouse_Installer_#{version}.zip"
  name "ELECOM Mouse Assistant"
  desc "Software to more effectively use an ELECOM mouse"
  homepage "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"

  livecheck do
    url "https://www.elecom.co.jp/global/download-list/utility/mouse_assistant/mac/"
    regex(/ELECOM[._-]Mouse[._-]Installer[._-]v?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :el_capitan"

  pkg "ELECOM_Mouse_Installer_#{version}.pkg"

  uninstall launchctl: "jp.com.ELECOM.autorun",
            pkgutil:   [
              "jp.co.elecom.ELECOM-Mouse-Util",
              "jp.co.elecom.mouse.ELECOM-Uninstall",
              "jp.co.elecom.mousePane",
            ]

  # No zap stanza required

  caveats do
    reboot
  end
end
