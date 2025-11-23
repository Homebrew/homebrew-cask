cask "hhkb" do
  version "1.4.0"
  sha256 "e6dd6f893de82f5379904d02c510abafd60f5f42a35dae07387d7ed77beb8db5"

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com/downloads/hhkb/mac/"
  name "Happy Hacking Keyboard Keymap Tool"
  desc "Allows keymap customization on HHKB HYBRID Type-S and HYBRID models"
  homepage "https://happyhackingkb.com/"

  livecheck do
    url "https://happyhackingkb.com/download/"
    regex(%r{macOS\s*</td>.*?HHKBkeymapTool[._-]v?\d+(?:\.\d+)*[^.]*?\.dmg.*?>\s*v?(\d+(?:\.\d+)+)\s*<}im)
  end

  pkg "HHKBkeymapTool_#{version.no_dots}ma.pkg"

  uninstall quit:    "jp.co.pfu.hhkb-keymap-tool",
            pkgutil: "jp.co.pfu.hhkb-keymap-tool.pkg.V#{version}",
            delete:  [
              "/Applications/hhkb-keymap-tool*",
              "/Applications/HHKB/EULA_*.rtf",
              "/Applications/HHKB/OSS_License.txt",
            ],
            rmdir:   "/Applications/HHKB"

  zap trash: [
        "~/Library/Application Support/hhkb-keymap-tool/*.log",
        "~/Library/Preferences/jp.co.pfu.hhkb-keymap-tool.plist",
      ],
      rmdir: "~/Library/Application Support/hhkb-keymap-tool"

  caveats do
    requires_rosetta
  end
end
