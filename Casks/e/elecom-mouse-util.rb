cask "elecom-mouse-util" do
  version "5.2.14.001"
  sha256 "13509b196c273b6dfef07abf6c20a19c4e9040d8715c154edac367fe7acb1a39"

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
