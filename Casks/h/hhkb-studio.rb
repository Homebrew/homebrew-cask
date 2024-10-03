cask "hhkb-studio" do
  version "1.1.0"
  sha256 "15b4d672899fd2ea6f605b8deeb79baef9096539785749b992e10d7a24d85443"

  url "https://origin.pfultd.com/downloads/hhkbstudio/mac/HHKBStudiokeymapTool_#{version.no_dots}ma.dmg",
      verified: "origin.pfultd.com/downloads/hhkbstudio/mac/"
  name "Happy Hacking Keyboard Studio Keymap Tool"
  desc "Customize keymap, shortcuts, and gesture pad behavior on HHKB Studio"
  homepage "https://happyhackingkb.com/"

  livecheck do
    url "https://happyhackingkb.com/download/"
    regex(%r{macOS\s*</td>.*?HHKBStudiokeymapTool[._-]v?\d+(?:\.\d+)*[^.]*?\.dmg.*?>\s*v?(\d+(?:\.\d+)+)\s*<}im)
  end

  depends_on macos: ">= :big_sur"

  pkg "HHKBStudiokeymapTool_#{version.no_dots}ma.pkg"

  uninstall quit:    "jp.co.pfu.hhkb-studio-keymap-tool",
            pkgutil: "jp.co.pfu.hhkb-studio-keymap-tool.pkg.V#{version}",
            delete:  [
              "/Applications/hhkb-studio-keymap-tool*",
              "/Applications/HHKBStudio/EULA_*.rtf",
              "/Applications/HHKBStudio/OSS_License.txt",
            ],
            rmdir:   "/Applications/HHKBStudio"

  zap trash: [
        "~/Library/Application Support/hhkb-keymap-tool/Studio/*.log",
        "~/Library/Preferences/jp.co.pfu.hhkb-studio-keymap-tool.plist",
      ],
      rmdir: "~/Library/Application Support/hhkb-keymap-tool/Studio/"
end
