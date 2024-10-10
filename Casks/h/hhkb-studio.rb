cask "hhkb-studio" do
  version "1.1.1"
  sha256 "2938653604517bf664e51a5ae071e14d37dc46c7f368c8427b1f76d01b5e0413"

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
