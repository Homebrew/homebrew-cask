cask "hhkb-studio" do
  version "1.0.4"
  sha256 "29bd562e6ec1f116d2da0ac8f4fe6d0cdce95ad8f4dc62e0d9778b0814b90b4a"

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
