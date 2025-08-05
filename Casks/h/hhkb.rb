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
    regex(%r{macOS\s*</td>.*?HHKBkeymapTool[._-]v?\d+(?:\.\d+)*[^.]*?\.dmg.*?>\s*v?(\d+(?:\.\d+)+)\s*<}im)
  end

  depends_on macos: ">= :mojave"

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
