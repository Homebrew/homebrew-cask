cask "hhkb" do
  version "1.3.0"
  sha256 "ad9bad341ebf6a189b907b0dd5ee68627d508664335ea75e0109964a25d268f9"

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com/downloads/hhkb/mac/"
  name "Happy Hacking Keyboard Keymap Tool"
  desc "Allows keymap customization on HHKB HYBRID Type-S and HYBRID models"
  homepage "https://happyhackingkb.com/"

  livecheck do
    url "https://happyhackingkb.com/download/"
    regex(/macOS\s+:\s+Version\s+(\d+(?:\.\d+)+)/i)
    strategy :page_match
  end

  pkg "HHKBkeymapTool_#{version.no_dots}ma.pkg"

  uninstall pkgutil: "jp.co.pfu.hhkb-keymap-tool.pkg.V#{version}",
            quit:    "jp.co.pfu.hhkb-keymap-tool",
            delete:  [
              "#{appdir}/hhkb-keymap-tool*",
              "#{appdir}/HHKB/EULA_*.rtf",
              "#{appdir}/HHKB/OSS_License.txt",
            ],
            rmdir:   [
              "#{appdir}/HHKB",
            ]

  zap trash: [
        "~/Library/Application Support/hhkb-keymap-tool/*.log",
        "/private/var/db/receipts/jp.co.pfu.hhkb-keymap-tool.pkg.V#{version}.bom",
        "/private/var/db/receipts/jp.co.pfu.hhkb-keymap-tool.pkg.V#{version}.plist",
      ],
      rmdir: [
        "~/Library/Application Support/hhkb-keymap-tool",
      ]

  caveats do
    requires_rosetta
  end
end
