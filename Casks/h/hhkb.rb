cask "hhkb" do
  version "2.0.1"
  sha256 "c0e57922fc972f1d8ab6f317d8f4e9cffc25f51b2aad1f78fbf187f968f1af5a"

  url "https://origin.pfultd.com/downloads/hhkb/mac/HHKBkeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com/downloads/hhkb/mac/"
  name "Happy Hacking Keyboard Keymap Tool"
  desc "Allows keymap customization on HHKB HYBRID Type-S and HYBRID models"
  homepage "https://happyhackingkb.com/"

  livecheck do
    url "https://happyhackingkb.com/download/"
    regex(%r{macOS\s*</td>.*?HHKBkeymapTool[._-]v?\d+(?:\.\d+)*[^.]*?\.dmg.*?>\s*v?(\d+(?:\.\d+)+)\s*<}im)
  end

  depends_on :macos

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
